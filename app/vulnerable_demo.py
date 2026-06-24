import subprocess

def ping_host(host):
    # Exemple volontairement vulnérable pour tester Semgrep :
    # utilisation de shell=True avec une entrée utilisateur.
    subprocess.run("ping -c 1 " + host, shell=True)

if __name__ == "__main__":
    user_input = input("Host à tester : ")
    ping_host(user_input)
