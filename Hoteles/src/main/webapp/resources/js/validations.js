/**
 * Created by WillieManuel on 2/7/16.
 */

$(document).ready(function ($) {

    $("#loginForm").validate({
        rules: {
            usuario: {
                required: true,
                maxlength: 25
            },
            clave: {
                required: true,
                maxlength: 100
            }
        }
    });

    $("#cedula").mask("00000000000")
    $("#telefono").mask("0000000000")
    $("#celular").mask("0000000000")

    $("#registrarForm").validate({
        rules:{
            usuario: {
                required: true,
                maxlength: 25
            },
            clave: {
                required: true,
                maxlength: 100,
                minlength: 8
            },
            confirmar_clave:{
                required: true,
                maxlength: 100,
                minlength: 8,
                equalTo: "#clave"
            },
            nombres:{
                required: true,
                maxlength: 50
            },
            apellidos:{
                required: true,
                maxlength: 50
            },
            cedula:{
                required: true,
                maxlength: 11,
                minlength: 11
            },
            telefono:{
                required: true,
                maxlength: 10,
                minlength: 10
            },
            celular:{
                required: true,
                maxlength: 10,
                minlength: 10
            },
            correo:{
                required: true,
                maxlength: 50,
                email:true
            }
        }
    });
});

jQuery.extend(jQuery.validator.messages, {
    required: "Este campo es requerido.",
    remote: "Please fix this field.",
    email: "Por favor introduzca un email válido.",
    url: "Please enter a valid URL.",
    date: "Please enter a valid date.",
    dateISO: "Please enter a valid date (ISO).",
    number: "Please enter a valid number.",
    digits: "Introduzca solo números en este campo.",
    creditcard: "Please enter a valid credit card number.",
    equalTo: "Por favor, introduzca el mismo valor nuevamente",
    accept: "Introduzca un archivo con una extensión válida.",
    maxlength: jQuery.validator.format("Introduzca menos de {0} carácteres."),
    minlength: jQuery.validator.format("Introduzca al menos {0} carácteres."),
    rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
    range: jQuery.validator.format("Please enter a value between {0} and {1}."),
    max: jQuery.validator.format("Please enter a value less than or equal to {0}."),
    min: jQuery.validator.format("Please enter a value greater than or equal to {0}.")
});
