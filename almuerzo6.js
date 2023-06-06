class Almuerzosocho {
    constructor(nombre, descripcion,imagen) {
      this.nombre = nombre;
      this.descripcion = descripcion;
      this.imagen = imagen
 
    }
  
    mostrarMenu() {
      const menuContainer = document.getElementById('almuerzo-container');
  
      const menuItem = document.createElement('div');
      menuItem.classList.add('menu-item');
  
      const nombreElement = document.createElement('h2');
      nombreElement.textContent = this.nombre;
  
      const descripcionElement = document.createElement('p');
      descripcionElement.textContent = this.descripcion;

      const imagenElement = document.createElement('img');
      imagenElement.src = this.imagen;
      imagenElement.alt = this.nombre;
      imagenElement.classList.add('menu-item-image')
  
      menuItem.appendChild(nombreElement);
      menuItem.appendChild(imagenElement);
      menuItem.appendChild(descripcionElement);      
  
      menuContainer.appendChild(menuItem);
    }
  }
  
  // Creación de instancias de menú
  const menu1 = new Almuerzosocho('Almuerzo 1', 'Carne, Lentejas, Arroz y Limonada',"imagenes/carne.png");
  const menu2 = new Almuerzosocho('Almuerzo 2', 'Pierna pernil, Frijoles y Jugo de Mora','imagenes/pernil.png');
  const menu3 = new Almuerzosocho('Almuerzo 3', 'Chuleta, Pasta, Papa y Jugo de Mango','imagenes/chuleta.png');
  
  // Mostrar los menús en la página web
  menu1.mostrarMenu();
  menu2.mostrarMenu();
  menu3.mostrarMenu();