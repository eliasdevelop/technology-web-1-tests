package br.unit.web3.exerciciostream;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

public class ArquivoNumeros {

	public void gravarArquivo() throws IOException {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		PrintWriter arq = new PrintWriter(new BufferedWriter(new FileWriter("numeros.txt")));
		for (int i = 0; i < 10; ++i) {
			String linha = in.readLine();
			int n = Integer.parseInt(linha);
			arq.println(n);
		}
		arq.close();
	}
	
	public void lerArquivo() throws IOException {
		BufferedReader arq = new BufferedReader(new FileReader("numeros.txt"));
		String linha = arq.readLine();
		while (linha != null) {
			int num = Integer.parseInt(linha);
			System.out.print(num + ", ");
			linha = arq.readLine();
		}
		arq.close();
	}

	public static void main(String[] args) throws IOException {
		//new ArquivoNumeros().gravarArquivo();
		new ArquivoNumeros().lerArquivo();
	}

}
