import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Data dataStore = new Data();
        
        while (true) {
            System.out.println("\n=====MENU=====");
            System.out.println("1) Add Text to back\n2) Add Text at index\n3) Edit Text");
            System.out.println("4) Remove Text by index\n5) Remove Text by value\n6) Exit");
            System.out.print("Select--> ");
            
            String choiceInput = sc.nextLine(); 
            try {
                int choice = Integer.parseInt(choiceInput);

                if (choice == 6) {
                    System.out.println("Bye!!!");
                    break;
                }

                switch (choice) {
                    case 1:
                        System.out.println("== Add Text to back ==");
                        System.out.print("Input text : ");
                        dataStore.addBack(sc.nextLine());
                        break;
                    case 2:
                        System.out.println("== Add Text at index ==");
                        System.out.print("Input index : ");
                        int idx2 = Integer.parseInt(sc.nextLine());
                        System.out.print("Input text : ");
                        dataStore.addAtIndex(idx2, sc.nextLine());
                        break;
                    case 3:
                        System.out.println("== Edit Text ==");
                        System.out.print("Input index : ");
                        int idx3 = Integer.parseInt(sc.nextLine());
                        System.out.print("Input Text : ");
                        dataStore.edit(idx3, sc.nextLine());
                        break;
                    case 4:
                        System.out.println("== Remove Text by index ==");
                        System.out.print("Input index : ");
                        dataStore.removeByIndex(Integer.parseInt(sc.nextLine()));
                        break;
                    case 5:
                        System.out.println("== Remove Text by value ==");
                        System.out.print("Input Text : ");
                        dataStore.removeByValue(sc.nextLine());
                        break;
                    default:
                        System.out.println("Wrong input!!!");
                        continue;
                }
                dataStore.display();

            } catch (NumberFormatException e) {
                System.out.println("java.lang.NumberFormatException: For input string: \"" + choiceInput + "\"");
                dataStore.display();
            } catch (IndexOutOfBoundsException e) {
                System.out.println("java.lang.IndexOutOfBoundsException: " + e.getMessage());
                dataStore.display();
            }
        }
        sc.close();
    }
}
