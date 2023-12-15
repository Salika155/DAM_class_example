function completaColumna(){
    let viewportWidth = window.innerWidth;
    
    if(viewportWidth > 1000)
    {
        let cuerpo = document.getElementById("cuerpo");
        let cuerpoColumna = document.getElementById("cuerpocolumna");
    
        let cuerpoAltura = cuerpo.clientHeight;
        let cuerpoColumnaAltura = cuerpoColumna.clientHeight;
    
        if(cuerpoAltura>cuerpoColumnaAltura)
            cuerpoColumna.style.height = cuerpoAltura + "px";
        else
            cuerpo.style.height = cuerpoColumnaAltura + "px";
    }

}