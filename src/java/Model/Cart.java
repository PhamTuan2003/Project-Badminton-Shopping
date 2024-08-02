/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class Cart {

    private List<Items> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Items> getItems() {
        return items;
    }

    public void setItems(List<Items> items) {
        this.items = items;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    private Items getItemById(int id) {
        for (Items i : items) {
            if (i.getRacketSpecs().getRacket_id() == id) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Items t) {
        if (getItemById(t.getRacketSpecs().getRacket_id()) != null) {
            Items m = getItemById(t.getRacketSpecs().getRacket_id());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public float getTotalMoney() {
        float t = 0;
        for (Items i : items) {
            t += (i.getQuantity() * i.getRacketSpecs().getPrice());
        }
        return t;
    }

    private RacketSpecs getProductById(int id, List<RacketSpecs> list) {
        for (RacketSpecs ra : list) {
            if (ra.getRacket_id() == id) {
                return ra;
            }
        }
        return null;
    }

    public Cart(String txt, List<RacketSpecs> list) {
        // Khởi tạo một danh sách mới để lưu trữ các mục trong giỏ hàng
        items = new ArrayList<>();
        try {
            // Kiểm tra xem chuỗi txt có dữ liệu hay không
            if (txt != null && txt.length() != 0) {
                // Tách chuỗi thành các phần tử con sử dụng dấu '/'
                String[] s = txt.split("/");
                for (String i : s) {
                    // Tách từng phần tử con thành ID sản phẩm và số lượng
                    String[] n = i.split(":");
                    // Lấy ID sản phẩm
                    int id = Integer.parseInt(n[0]);
                    // Lấy số lượng
                    int quantity = Integer.parseInt(n[1]);
                    // Lấy thông tin sản phẩm từ danh sách list dựa trên ID
                    RacketSpecs p = getProductById(id, list);
                    // Tạo một mục mới và thêm vào giỏ hàng
                    Items t = new Items(p, quantity, p.getPrice());
                    // Thêm mục vào giỏ hàng
                    addItem(t);
                }
            }
        } catch (NumberFormatException e) {
            System.out.println("Model.Cart.<init>()" + e);
        }

    }

}
