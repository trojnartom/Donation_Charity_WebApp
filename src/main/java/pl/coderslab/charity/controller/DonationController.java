package pl.coderslab.charity.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.repository.CategoryRepository;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class DonationController {

    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;

    @GetMapping("/donate")
    public String donationView(Model model) {
        List<Category> categories = categoryRepository.findAll();
        Donation donation = new Donation();
        donation.setQuantity(1);
        List<Institution> institutions = institutionRepository.findAll();
        model.addAttribute("institutions", institutions);
        model.addAttribute("categories", categories);
        model.addAttribute("donation", donation);
        return "donationForm";
    }

    @PostMapping("/donate")
    public String donationData(@ModelAttribute("donation") @Valid Donation donation, BindingResult result) {
    if (result.hasErrors()) {
        return "donationForm";
    }
    donationRepository.save(donation);
        return "donationConfirm";
    }
}
