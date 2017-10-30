$(document).ready(function() {
    $('#idAluno').bind('keyup', function(e) {
        let usuarios = Array()

        $.ajax({
            type: 'POST',
            data: { key: $('#idAluno').val() },
            url: '/ajax/getAluno',
            beforeSend: zerarOption,
            success: function(data) {

                if (data.length == 0) {
                    $('#idAluno').addClass('error')
                    $('.errorMensagem').remove()
                    $('.mensagemError').append('<h4 class="errorMensagem">Usuario inexistente</h4>')


                } else {
                    $('.errorMensagem').remove()
                    $('#idAluno').removeClass('error')

                }
                data.forEach(content => {
                    usuarios.push(content.nome)
                    $('#alunos').append(`<option class="opcoes">${content.nome}</option>`)
                })
            },

            // complete: function verificar() {
            //     if (!usuarios.includes($('#idAluno').val())) {
            //         console.log(usuarios)
            //         $('#idAluno').addClass('error')
            //         $('.mensagemError').append('<h4 class="errorMensagem">Usuario inexistente</h4>')

            //     } else {
            //         $('.errorMensagem').remove()

            //     }
            // }


        })

    })
})

function zerarOption() {
    $('.opcoes').remove()

}