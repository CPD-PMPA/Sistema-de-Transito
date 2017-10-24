var correct = window.location.search
if (correct) {
    correct = correct.replace('?', '')

    document.getElementById('sucesso').className = " cadastro_sucesso"
    setTimeout(() => {
        document.getElementById('sucesso').style.display = 'none'
        window.location.href = 'cadastrar'
    }, 5000)
}