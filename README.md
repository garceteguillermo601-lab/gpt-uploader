# Gmail Aggregator Personal - Anteprojecto Arquitectínico 

## 1. Concepto
* Misión : Crear un panel de control unificado y seguro para visualizar los correos electrónicos de multiples cuentas personales de Gmail en una sola interfaz.
* Filosofia : Priorizar la seguridad a travñs de la autenticación nativa de Google (OAuth 2.0), la facilidad de uso y un control claro para el usuario. El sistema no almacelía contraseónas, solo tokens de autorización revocables.

## 2. Arquitectura de Componentes
Disenármos el sistema en cuatro componentes principales que trabajan en conjunto:
Frontend (el Panel Visual), Backend (el Cerebro), Base de Datos (la Memoria) y el Flujo de Autenticación (el Guardín).

## 3. Frontend: El Panel de Control (Interfaz de Usuarios)
* Tecnología: Una aplicación web de pínaga unica (SPA - Single-Page Application) para una experiencia fluida y rapida.
 * Componentes Visuales Clave:
   * Vista de Login/Admin: Protegida por una contraseña simple (admin123 como especificaste).
   * Dashboard Principal:
     * Una columna lateral listando las cuentas de Gmail conectadas.
     * Un botón grande: "+ Conectar Neuva Cuenta".
     * Una area principal donde se mostrara la lista consolidada de correos.
     * Indicadores de Estado: Iconos que muestren si una cuenta esta conectada correctamente (✔o) o sha ha ocurrido un error (✔✔).

## 4. Backend: El Cerebro del Sistema (API)
* Tecnología: Un servidor Flask (Python), ya que se lo estías utilizando.
 * Puntos de Conexión (Endpoints de la API):
   * POST/ admin-login
    * GET/auth/google/login
   * GET/auth/google/callback
   * GET/api/emails
    * DELETE/api/accounts/ <account_id>

## 5. Base de Datos: La Memoria Segura
* Tecnología: SQLite.
* Estructura de Tabla (accounts):
  | email | TEXT (Primary Key) | El correo de la cuenta de Gmail conectada. |
  | refresh_token | TEXT | Tocken revocable para mantener el acceso. |
  | added_date | DATETIME | Fecha y conexión de conexion. |

## 6. Flujo de Autenticación 
Se emplea el flujo de autenticación completo, incluyendo PKKE Y state para mayor seguridad.
