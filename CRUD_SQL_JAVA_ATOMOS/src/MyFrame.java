
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import java.awt.Color;
import javax.swing.JButton;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyFrame extends JFrame implements ActionListener {

    JButton button3;

    MyFrame(){
        

        ImageIcon image = new ImageIcon("Logo.png");
        this.setIconImage(image.getImage());
        this.getContentPane().setBackground(new Color(07,00,28));

        
        JButton button = new JButton();
        button.setBounds(600,50,100,50);
        button.setText("Boton 1");
       

        JButton button2 = new JButton();
        button2.setBounds(600,110,100,50);
        button2.setText("Boton 2");

        button3 = new JButton();
        button3.setBounds(600,170,100,50);
        button3.setText("Boton 3");

        JButton button4 = new JButton();
        button4.setBounds(600,230,100,50);
        button4.setText("Boton 4");


        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setLayout(null);
        this.setTitle("SISTEMA DE VENTAS");       
        this.setSize(800, 600);
        this.setVisible(true);
        this.setResizable(false);
        this.add(button);
        this.add(button2);
        this.add(button3);
        this.add(button4);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        
        if(e.getSource()==button3) {
            System.exit(0);
        }        
    }}
    

