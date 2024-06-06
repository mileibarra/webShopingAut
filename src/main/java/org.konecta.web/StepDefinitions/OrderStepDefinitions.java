package org.konecta.web.StepDefinitions;

import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.abilities.BrowseTheWeb;
import net.serenitybdd.screenplay.actions.Open;
import net.thucydides.core.annotations.Managed;
import org.openqa.selenium.WebDriver;
import org.konecta.web.Interfaces.UrlPage;
import org.konecta.web.Model.OrderModel;
import org.konecta.web.Model.ProductsModel;
import org.konecta.web.Tareas.MakeOrderTask;
import org.konecta.web.Tareas.TotalValueSum;
import org.konecta.web.Tareas.addProductTask;
import org.konecta.web.Utilidades.DataOrder;

import static net.serenitybdd.screenplay.ensure.Ensure.that;
import static org.konecta.web.Interfaces.OrderPage.LBL_SUCCESS_BUY;

public class OrderStepDefinitions {
    @Managed(driver = "chrome")
    private WebDriver getBrowser;
    UrlPage url = new UrlPage();
    private final Actor actor = Actor.named("Usuario");
    ProductsModel products = new ProductsModel();

    @Before
    public void setUp() {
        actor.can(BrowseTheWeb.with(getBrowser));
    }

    @Given("Mile ingresa a la pagina de demoblaze")
    public void getIntoPage() {
        actor.wasAbleTo(Open.browserOn(url));
    }

    @When("^ella ingresa el nombre de los productos para hacer la compra: (.*), (.*), (.*)$")
    public void sendProductName(String phone, String laptops, String monitors) {
        products.setPhones(phone);
        products.setLaptops(laptops);
        products.setMonitors(monitors);
        actor.attemptsTo(addProductTask.dataBuy(products));
    }

    @And("ella escribe los datos para para realizar el pedido")
    public void writeDataForSendOrder() {
        OrderModel dataOrder = DataOrder.DataOrderModel();
        actor.attemptsTo(MakeOrderTask.forBuy(dataOrder));
    }

    @Then("ella valida que la suma del valor de los productos sea igual al valor total")
    public void validateTotalSum() {
        actor.attemptsTo(TotalValueSum.ofBuy());
    }

    @And("ella valida el mensaje de compra exitosa: {string}")
    public void validateSuccesfulTex(String text) {
        actor.attemptsTo(that(LBL_SUCCESS_BUY).text().isEqualTo(text));
    }
}
