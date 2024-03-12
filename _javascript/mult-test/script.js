//
let items = [
    { id: 1, name: "Kassia Teste", value: "Kassia Teste" },
    { id: 2, name: "Paulo Henrique", value: "Paulo Henrique" },
    { id: 3, name: "Grand Hermano Victoria", value: "Grand Hermano Victoria" },
    { id: 4, name: "João Hortelã", value: "João Hortelã" },
    { id: 5, name: "Poliana Frogeri", value: "Poliana Frogeri" },
    { id: 6, name: "Ana Hasken", value: "Ana Hasken" },
    { id: 7, name: "Luiza Souza", value: "Luiza Souza" },
    { id: 8, name: "Samuel Souza", value: "Samuel Souza" }
]

$(document).ready(function () {

    let $dropdpwnItems = $("#dropdown-items");

    let selecionados = [];

    items.forEach(function (item) {

        let dropdownItem = $("<div>", { class: "dropdown-item" })
        let formCheck = $("<div>", { class: "form-check" });
        let formCheckInput = $("<input>", { class: "form-check-input", type: "checkbox", name: item.name, value: item.value, id: item.id });
        let formCheckLabel = $("<label>", { class: "form-check-label", for: item.id, text: item.name });

        formCheck.append(formCheckInput);
        formCheck.append(formCheckLabel);
        dropdownItem.append(formCheck);

        $($dropdpwnItems).append(dropdownItem);

        //
        formCheckInput.on("click", function() {       

            //
            if (this.checked) {
                selecionados.push(item);
            }
            else {
                selecionados = selecionados.filter(function (element) {
                    return element.id !== item.id;
                });
            }
            
            //
            let exibeSelecionados = "";
            selecionados.forEach(function (element) {
                exibeSelecionados += '<span class="badge rounded-pill text-bg-success item" name="' + element.name + '">'
                    + element.name +
                    '<button type="button" id="btnCloseItem' + element.id + '"><i class="bi bi-x-circle"></i></button></span>'
            });
            $("#selected-item").html(exibeSelecionados);

            //
            if (selecionados.length === 0) {
                $("#selecione").show();
            }
            else {
                $("#selecione").hide();
            }

            //
            $("[id^='btnCloseItem']").on("click", function () {
                let itemExibido = $(this).parent().attr("name");
                $(this).parent().remove();

                selecionados = selecionados.filter(function (element) {
                    return element.name != itemExibido;
                });

                let inputElement = $("[name='" + itemExibido + "']").closest(".form-check").find(".form-check-input");
                if (inputElement.length > 0) {
                    inputElement.prop("checked", false);
                }

                //
                if (selecionados.length === 0) {
                    $("#selecione").show();
                }
                else {
                    $("#selecione").hide();
                }

                //debug
                console.log(selecionados)
            });

            //debug
            console.log(selecionados)
        });
    });
});
