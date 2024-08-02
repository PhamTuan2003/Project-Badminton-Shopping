/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS
 */
public class RacketType {
    private int rackettype_id;
    private String rackettype_name;

    public RacketType() {
    }

    public RacketType(int rackettype_id, String rackettype_name) {
        this.rackettype_id = rackettype_id;
        this.rackettype_name = rackettype_name;
    }

    public int getRackettype_id() {
        return rackettype_id;
    }

    public void setRackettype_id(int rackettype_id) {
        this.rackettype_id = rackettype_id;
    }

    public String getRackettype_name() {
        return rackettype_name;
    }

    public void setRackettype_name(String rackettype_name) {
        this.rackettype_name = rackettype_name;
    }
    
    
}
