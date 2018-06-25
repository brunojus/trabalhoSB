section .text

global triangulo


triangulo:
    push ebp
    mov ebp, esp            ; Procedimento padrão para salvar o contexto

    push ecx
    push ebx
    push edx                ; Salvando os registradores que serão utilizados nessa rotina.


    mov ecx, [ebp+8]        ; Hipotenusa
    mov ebx, [ebp+12]       ; Cateto 1
    mov edx, [ebp+16]       ; Cateto 2
    mov eax, [ebp+20]       ; Retorno

checktriangulo:             ; Label da função que calcula e verifica se é triangulo retangulo

    imul edx, edx  ; calcula o quadrado de um cateto
    imul ebx, ebx  ; calcula o quadrado de um cateto
    imul ecx, ecx  ; calcula o quadrado da hipotenusa

    add ebx, edx   ; soma dos quadrados dos catetos

    cmp ecx, ebx   ; verificando se a soma dos quadrados
                   ; dos catetos é igual ao quadrado da hipotenusa.

     jne  nretangulo    ; Pula para a Label "nretangulo" se não for triângulo retângulo
     jmp  retangulo     ; pula para a Label "retangulo" se a comparação for igual

retangulo:                

    mov eax, 1             ; eax recebe 1 para indicar que o triangulo é retangulo
    jmp final              ; desvio para o label "final" para terminar a rotina

nretangulo:                ; label que diz que não é triângulo retangulo

    mov eax, 0             ; eax recebe 0 para indicar que o triângulo não é retângulo
    jmp final              ; desvio para o label "final" para terminar a rotina

final:
    pop ecx
    pop ebx
    pop edx               ; Desempilha os registradores em ordem inversa de empilhamento, restaurando o antigo contexto dos registradores.
    pop ebp               ; Desempilha o ebp para restaurar o contexto
    ret                   ; sai da função (valor de retorno fica em eax)
