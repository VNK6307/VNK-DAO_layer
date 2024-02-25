package wind.laguna.daolayer.models;

import lombok.Data;

import java.util.Date;

@Data
public class Orders {
    private int orders_id;
    private Date date;
    private String productName;
    private int amount;
}
