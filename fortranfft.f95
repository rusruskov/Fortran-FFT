MODULE fortranfft
contains

  SUBROUTINE generate_exp(N, exp_factors)
    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N-1), intent(out) :: exp_factors

    real(8), parameter :: PI = 4*atan(1.0_8)
    complex(8), parameter :: Imag = (0.0_8, 1.0_8)

    integer :: i

    do i = 0, N-1
      exp_factors(i) = exp(-2*Imag*PI*i/N)
    end do

  END SUBROUTINE generate_exp

  SUBROUTINE dft(m,y,z)
    implicit none

    integer, intent(in) :: m
    complex(8), dimension(m), intent(in) :: y(0:m-1)
    complex(8), dimension(m), intent(out) :: z(0:m-1)

    real(8), parameter :: PI = 4*atan(1.0_8)
    complex(8), parameter :: Imag = (0.0_8, 1.0_8)

    complex(8) :: sum_exp = (0,0)
    integer :: i, j

    do i = 0, m-1
      do j = 0, m-1
        sum_exp = sum_exp + exp(-2*PI*Imag*i*j/m) * y(j)
      end do
      z(i) = sum_exp
      sum_exp = (0,0)
    end do

  END SUBROUTINE dft

  RECURSIVE SUBROUTINE fft(N,x,exp_factors,f)
    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N-1), intent(in) :: x
    complex(8), dimension(0:N-1), intent(in) :: exp_factors
    complex(8), dimension(0:N-1), intent(out) :: f

    complex(8), dimension(0:N/2-1) :: f_even, f_odd

    if (N .le. 2) then
      call dft(N,x,f)

    else if (mod(N,2) == 0) then
      call fft(N/2, x(1::2), (exp_factors(0:N/2-1))**2, f_odd)
      call fft(N/2, x(::2), (exp_factors(0:N/2-1))**2, f_even)

      f(0:N/2-1) = f_even(0:N/2-1) + f_odd(0:N/2-1) * exp_factors(0:N/2-1)
      f(N/2:) = f_even(0:N/2-1) - f_odd(0:N/2-1) * exp_factors(0:N/2-1)

    else
      call dft(N,x,f)
    end if

  END SUBROUTINE fft

  SUBROUTINE fft2(N,x,exp_factors,f)
    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N-1, 0:N-1), intent(in) :: x
    complex(8), dimension(0:N-1), intent(in) :: exp_factors
    complex(8), dimension(0:N-1, 0:N-1), intent(out) :: f

    integer :: i

    do i = 0, N-1
      call fft(N,x(i,:),exp_factors, f(i,:))
    end do

    do i = 0, N-1
      call fft(N,f(:,i),exp_factors, f(:,i))
    end do

  END SUBROUTINE fft2


END MODULE fortranfft
