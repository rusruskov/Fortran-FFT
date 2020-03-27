MODULE fortranfft
contains

  SUBROUTINE generate_exp(N, exp_factors)
    ! Generates the exponential factors which are used in the subroutines
    ! bellow.

    ! Inputs : N - the length of the output array
    !
    ! Outputs : exp_factors - array of the form W[n] = exp(-2j*pi*n/N)

    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N/2-1), intent(out) :: exp_factors

    real(8), parameter :: PI = 4*atan(1.0_8)
    complex(8), parameter :: Imag = (0.0_8, 1.0_8)

    integer :: i

    do i = 0, N/2-1
      exp_factors(i) = exp(-2*Imag*PI*i/N)
    end do

  END SUBROUTINE generate_exp

  SUBROUTINE dft(N,x,f)
    ! A direct implementation of the Discrete Fourier Transform.
    !
    ! Inputs : x - the array which we perform the DFT on.
    !          N - the number of elements in x.
    !
    ! Outputs : f - the transformed array.

    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N-1), intent(in) :: x
    complex(8), dimension(0:N-1), intent(out) :: f

    real(8), parameter :: PI = 4*atan(1.0_8)
    complex(8), parameter :: Imag = (0.0_8, 1.0_8)

    complex(8) :: sum_exp = (0,0)
    integer :: i, j

    do i = 0, N-1
      do j = 0, N-1
        sum_exp = sum_exp + exp(-2*PI*Imag*i*j/N) * x(j)
      end do
      f(i) = sum_exp
      sum_exp = (0,0)
    end do

  END SUBROUTINE dft

  RECURSIVE SUBROUTINE fft(N,x,exp_factors,f)
    ! A Fast Fourier Transform using the Cooley-Tukey radix-2 algorithm.
    !
    ! Inputs : x - the array which we perform the DFT on.
    !          N - the number of elements in x.
    !          exp_factors - the array exponentials of the form exp(-2j*pi*n/N)
    !
    ! Outputs : f - the transformed array.

    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N-1), intent(in) :: x
    complex(8), dimension(0:N/2-1), intent(in) :: exp_factors
    complex(8), dimension(0:N-1), intent(out) :: f

    complex(8), dimension(0:N/2-1) :: f_even, f_odd

    ! If input array has length 2 or less it returns the regular DFT.
    if (N .le. 2) then
      call dft(N,x,f)

    ! If the input array is divisible by 2, it calls itself recursively on both
    ! the even and odd elements and then adds them together.
    else if (mod(N,2) == 0) then
      call fft(N/2, x(1::2), (exp_factors(0:N/2-1))**2, f_odd)
      call fft(N/2, x(::2), (exp_factors(0:N/2-1))**2, f_even)

      f(0:N/2-1) = f_even(0:N/2-1) + f_odd(0:N/2-1) * exp_factors(0:N/2-1)
      f(N/2:) = f_even(0:N/2-1) - f_odd(0:N/2-1) * exp_factors(0:N/2-1)

    ! For robustness, even if the array is not furher divisible by 2, we return
    ! the regular DFT regardless of size.
    else
      call dft(N,x,f)
    end if

  END SUBROUTINE fft

  SUBROUTINE fft2(N,x,exp_factors,f)
    ! A 2D FFT based on the 1D case. Complexity is O(N^2 log N) as opposed to
    ! O(N^4) for the 2D DFT.
    !
    ! Inputs : x - the NxN array which we perform the DFT on.
    !          N - the length of each dimension of x.
    !          exp_factors - the array exponentials of the form exp(-2j*pi*n/N)
    !
    ! Outputs : f - the transformed array.

    implicit none

    integer, intent(in) :: N
    complex(8), dimension(0:N-1, 0:N-1), intent(in) :: x
    complex(8), dimension(0:N/2-1), intent(in) :: exp_factors
    complex(8), dimension(0:N-1, 0:N-1), intent(out) :: f

    integer :: i

    ! Creates the 2D array f, whose rows are FFTs of the rows of x.
    do i = 0, N-1
      call fft(N,x(i,:),exp_factors, f(i,:))
    end do

    ! Replaces each column in f with its fourier transform.
    do i = 0, N-1
      call fft(N,f(:,i),exp_factors, f(:,i))
    end do

  END SUBROUTINE fft2


END MODULE fortranfft
