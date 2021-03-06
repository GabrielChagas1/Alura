namespace GameTop
{
    public class Jogador1 : iJogador
    {
        public readonly string _Nome;

        // construtor
        public Jogador1(string nome)
        {
            _Nome = nome;
        }

        public string chuta()
        {
            return $"{_Nome} está chutando";
        }


        public string corre()
        {
            return $"{_Nome} está correndo";
        }

        public string passe()
        {
            return $"{_Nome} está passando";            
        }
    }
}