package br.unit.web3.exerciciostream;

public class ProgressoTexto implements ProgressoListener{

	@Override
	public void atualizarProgresso(long atual, long total) {
		float percent = (atual / (float) total) * 100;
		String stringPercent = String.format("%.0f", percent);	
		
		System.out.println("Progresso: " + stringPercent + "%\nFoi copiado " + atual + " bytes de " + total + " bytes");
	}

}
