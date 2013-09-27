package br.unit.web3.exerciciostream;

public class ProgressoWeb implements ProgressoListener{
	
	static private String porcento;
	
	public static String getPorcento() {
		return porcento;
	}
	
	@Override
	public void atualizarProgresso(long atual, long total) {
		float percent = (atual / (float) total) * 100;
		String stringPercent = String.format("%.0f", percent);	
		porcento = stringPercent;
	}

}
