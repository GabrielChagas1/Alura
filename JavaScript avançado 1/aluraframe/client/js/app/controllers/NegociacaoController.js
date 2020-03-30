class NegociacaoController {

    constructor(){
        let $ = document.querySelector.bind(document);

        // recuperando dados do form
        this._inputData = $('#data');
        this._inputQuantidade = $('#quantidade');
        this._inputValor = $('#valor');

        this._listaNegociacoes = new ListaNegociacoes();
        this._negociacoesView = new NegociacoesView($('#negociacoesView'));

        this._mensagem = new Mensagem();
        this._mensagemView = new MensagemView($('#mensagemView'));
        this._mensagemView.update(this._mensagem);

        this._negociacoesView.update(this._listaNegociacoes);
    }

    
    adicionar(event){
        event.preventDefault();
        // criando negociação
        this._listaNegociacoes.adiciona(this._criaNegociacao());

        // listagem de negociações
        this._negociacoesView.update(this._listaNegociacoes);
        
        
        // criando mensagem de cadastro
        this._mensagem.texto = 'Negociação adicionada com sucesso.';
        this._mensagemView.update(this._mensagem);


        // limpando campos
        this._clearFields(this._inputData, this._inputQuantidade, this._inputValor);
    }

    // criação de uma negociação
    _criaNegociacao(){
        return new Negociacao(
            DateHelper.textoParaData(this._inputData.value),

            this._inputQuantidade.value,
            this._inputValor.value);
    }

    // limpa campos
    _clearFields(data, quantidade, valor){
        data.focus()
        data.value= '';
        quantidade.value = 0;
        valor.value = 0;
    }
}