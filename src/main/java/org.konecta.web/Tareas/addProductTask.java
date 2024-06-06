package org.konecta.web.Tareas;

import lombok.AllArgsConstructor;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import org.konecta.web.Interaccion.AddProductInteraction;
import org.konecta.web.Model.ProductsModel;

@AllArgsConstructor
public class addProductTask implements Task {

    private final ProductsModel products;

    public static addProductTask dataBuy(ProductsModel products) {
        return new addProductTask(products);
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.wasAbleTo(
                AddProductInteraction.inBuy(products));
    }
}