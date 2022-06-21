package pl.coderslab.charity.entity;


import lombok.*;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;

@Table(name = "institutions")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@Entity
public class Institution {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

}
