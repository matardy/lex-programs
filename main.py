import os
# 512 os.system() -> no such file in directory
# 0   os.system() -> OK

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def menu():
    print("Bienvenido al menú interactivo!")
    selection = input("Escoja un ejercicio del 1 al 21: ")
    if int(selection) not in range(1,22):
        print('Seleccion no valida.')
        return menu() 
    else:
        return selection

def number_to_letter(number:str)->str:
    letters = ["cero", "uno", "dos", "tres", "cuatro", "cinco",
            "seis", "siete", "ocho", "nueve", "diez", "once",
            "doce", "trece", "catorce", "quince", "dieciseis",
            "diecisiete", "dieciocho", "diecinueve", "veinte",
            "veintiuno"]
    res = '' 

    try:
        res = letters[int(number)]
    except IndexError:
        res = ''

    return res



def get_folder_content()->str:
    folder_name = menu()
    lex_program = number_to_letter(folder_name) + ".l"
    return f"~/Compilers_languages/LEX/{folder_name}"

def execute_program()->None:
    flag = True
    user_control = True
    while(flag):
        print(bcolors.HEADER + "------ Gutemberg , Isaac, Madelyn -------" + bcolors.ENDC) 
        folder_name = menu()
        lex_program = number_to_letter(folder_name) + ".l"
        path = f"LEX/{folder_name}"

    

        print(bcolors.OKGREEN + "-------------  Entrada del programa: ------------------"+ bcolors.ENDC)
        os.system(f"cat {path}/input.txt")
        print("\n")
        print(bcolors.OKGREEN + "------------- Codigo fuente : ------------- " + bcolors.ENDC)
        os.system(f"cat {path}/{lex_program}")
        print("\n")
        print(bcolors.OKGREEN + "------------- Salida del programa: ------------- " + bcolors.ENDC)
        os.system(f"cat {path}/output.txt")
        print("\n")
        selection = input("Desea continuar viendo ejercicios? Si/No: ")
        if (selection in ["Si", "No"]):
            flag = (selection == "Si")
        else:
            print(bcolors.FAIL + "Solo puede ingresar valores de Si/No!" + bcolors.ENDC)
            selection = input("Desea continuar viendo ejercicios? Si/No: ")
            flag = (selection == "Si")
    
        
    
