package br.unit.web3.exerciciostream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Copia {

	private String origem;
	private String destino;
	private ProgressoListener progresso;

	
	public ProgressoListener getProgresso() {
		return progresso;
	}

	public void setProgresso(ProgressoListener progresso) {
		this.progresso = progresso;
	}

	public Copia(String origem, String destino) {
		super();
		this.origem = origem;
		this.destino = destino;
	}
	
	public void copiar() throws IOException{
		File origem = new File(this.origem);
		File destino = new File(this.destino);
		
		InputStream in = new FileInputStream(origem);
        OutputStream out = new FileOutputStream(destino);       
        byte[] buf = new byte[1024];
        int len = in.read(buf);
        long atual = 0;
        while (len > 0) {
            out.write(buf, 0, len);
            atual += len;
            progresso.atualizarProgresso(atual, origem.length());
            len = in.read(buf);
        }
        in.close();
        out.close();

	}
	/*
	public static void main(String[] args) throws IOException {
		Copia copia = new Copia("/Users/humbertoelias/Desktop/BFBTemplate.zip", "/Users/humbertoelias/Desktop/copiaBFBTemplate.zip");
		copia.setProgresso(new ProgressoTexto());
		copia.copiar();
	}
	*/
}
