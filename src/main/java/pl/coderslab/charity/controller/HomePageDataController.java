package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class HomePageDataController {

    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;

    @GetMapping("/")
    public String InstitutionDataView (Model model) {
        List<Institution> institutions = institutionRepository.findAll();
        Long donations = donationRepository.count();
        Integer quantityOfDonations = donationRepository.findAll().stream()
                .filter(d -> d.getQuantity() > 0)
                .mapToInt(s -> s.getQuantity().intValue()).sum();
        System.out.println("Ilość worków: " + quantityOfDonations);
        model.addAttribute("donations", donations);
        model.addAttribute("quantity", quantityOfDonations);
        model.addAttribute("institutions", institutions);

        return "index";
    }
}
