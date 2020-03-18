program tarefab
      parameter (Nmax = 2*1000+1)
      dimension iposicao(Nmax)

      open(10, file='saida-b1')

      print *, "valor p:"
      read(*,*) p

      print *, "número de bebados M:"
      read(*,*) M

      N = 1000
      q = 1 - p
      iposicao = 0

      do j = 1, M !quantidade de bebados
          k = 1
          do i = 1, N !quatidade de passos
              if (rand().lt.p) then !direcao do passo
                  k = k + 1
              else
                  k = k - 1
              end if
          end do
          iposicao(k+N) = iposicao(k+N) + 1
      end do
      
      do i = -N, N 
        
        write(10,'(I0," ",I0)') i, iposicao(i+N+1)
      end do

 end program tarefab