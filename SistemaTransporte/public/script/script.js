var correct = window.location.search
if (correct) {
    correct = correct.replace('?', '')

    document.getElementById('sucesso').className = " cadastro_sucesso"
    setTimeout(() => {
        document.getElementById('sucesso').style.display = 'none'
        window.location.href = 'cadastrar'
    }, 5000)
}

var cont = 0;

function duplicarForm() {
    if (cont <= 1) {
        var formResponsavel = document.getElementById("form_respon")
        var novoForm = formResponsavel.cloneNode(true)
        document.getElementById('formulario_aluno').appendChild(novoForm)
        cont++
    } else {
        return false
    }
}

function dateMask() {
    var v = this.value;
    if (v.match(/^\d{2}$/) !== null) {
        this.value = v + '/';
    } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
        this.value = v + '/';
    }
}