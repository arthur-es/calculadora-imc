let form = document.querySelector('#form-ci');
let _inputPeso = document.querySelector('#inputPeso');
let _inputAltura = document.querySelector('#inputAltura');
let _notificacaoDiv = document.querySelector('#notificacao-imc-ci');

form.addEventListener('submit' , (event) => {
    event.preventDefault();

    let isInputAlturaEmpty = _inputAltura.value == '';
    let isInputPesoEmpty = _inputPeso.value == '';

    if(isInputAlturaEmpty || isInputPesoEmpty){
        alert("Entre com todos os dados antes de calcular!");
    } else {
        let imc = _inputPeso.value / (_inputAltura.value*_inputAltura.value);
        criarNotificacao(imc.toFixed(2));
    }

    
});


function criarNotificacao(imc){
    let divNotificacaoCriada = document.createElement('div');
    divNotificacaoCriada.textContent = "Seu IMC é " + imc;
    divNotificacaoCriada.classList.add("imcAviso");
    _notificacaoDiv.appendChild(divNotificacaoCriada);
}
