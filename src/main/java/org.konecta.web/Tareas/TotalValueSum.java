package org.konecta.web.Tareas;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import org.konecta.web.Interaccion.totalValueInteraction;

public class TotalValueSum implements Task {
    public static TotalValueSum ofBuy() {
        return new TotalValueSum();
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(totalValueInteraction.ofProducts());
    }
}
