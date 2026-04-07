# ⚡ Project Stealth-AI (Roblox Executor Assistant)

Un assistente IA modulare progettato per essere eseguito tramite executor su Roblox. Il sistema utilizza un'architettura remota basata su GitHub per aggiornamenti istantanei senza necessità di reinstallazione.

---

## 📂 Struttura del Progetto

Il progetto è suddiviso in moduli per garantire massima flessibilità e sicurezza.

| Percorso | Descrizione |
| :--- | :--- |
| `Core/Main.lua` | Il punto di ingresso che coordina tutti i moduli. |
| `Core/Brain.lua` | Gestisce le chiamate API agli LLM (DeepSeek/Blackbox) per generare codice Lua. |
| `Core/Interface.lua` | Crea la GUI "Ghost" invisibile agli altri giocatori. |
| `Modules/` | Cartella destinata a script aggiuntivi e funzioni pre-caricate. |

---

## 🚀 Installazione (Setup rapido)

### 1. Preparazione su GitHub
1. Crea un repository **Pubblico**.
2. Carica i file seguendo la struttura sopra indicata.
3. Assicurati che ogni file contenga il codice Lua corrispondente.

### 2. Configurazione del Loader
Modifica le variabili `user` e `repo` nel file loader dell'executor per puntare al tuo profilo.

### 3. Esecuzione
Incolla questa riga nel tuo executor (Solara, Wave, ecc.):

```lua
local user = "IL_TUO_NOME_UTENTE"
local repo = "IL_TUO_NOME_REPO"
loadstring(game:HttpGet("[https://raw.githubusercontent.com/](https://raw.githubusercontent.com/)"..user.."/"..repo.."/main/Core/Main.lua"))()
