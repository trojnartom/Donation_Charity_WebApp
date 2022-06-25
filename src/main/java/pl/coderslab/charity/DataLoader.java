//package pl.coderslab.charity;
//
//
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
//import org.springframework.context.event.ContextRefreshedEvent;
//import org.springframework.context.event.EventListener;
//import org.springframework.stereotype.Component;
//import pl.coderslab.charity.entity.Category;
//import pl.coderslab.charity.entity.Institution;
//import pl.coderslab.charity.repository.CategoryRepository;
//import pl.coderslab.charity.repository.DonationRepository;
//import pl.coderslab.charity.repository.InstitutionRepository;
//
//import javax.transaction.Transactional;
//
//@ConditionalOnProperty(name = "spring.jpa.hibernate.ddl-auto", havingValue = "create-drop")
//@Component
//@Slf4j
//@RequiredArgsConstructor
//public class DataLoader {
//
//    private final InstitutionRepository institutionRepository;
//    private final DonationRepository donationRepository;
//    private final CategoryRepository categoryRepository;
//
//    @EventListener
//    @Transactional
//    public void loadData(ContextRefreshedEvent event) {
//        log.debug("Loading data...");
//
//        institutionRepository.save(Institution.builder()
//                .name("Fundacja \"Dbam o Zdrowie\"")
//                .description("Pomoc dzieciom z ubogich rodzin.")
//                .build());
//        institutionRepository.save(Institution.builder()
//                .name("Fundacja \"A kogo\"")
//                .description("Pomoc wybudzaniu dzieci ze śpiączki.")
//                .build());
//        institutionRepository.save(Institution.builder()
//                .name("Fundacja \"Dla dzieci\"")
//                .description("Pomoc osobom znajdującym się w trudnej sytuacji życiowej.")
//                .build());
//        institutionRepository.save(Institution.builder()
//                .name("Fundacja \"Bez domu\"")
//                .description("Pomoc dla osób nie posiadających miejsca zamieszkania")
//                .build());
//        institutionRepository.save(Institution.builder()
//                .name("Fundacja \"DIOZ\"")
//                .description("Pomoc zwierzętom.")
//                .build());
//
//        categoryRepository.save(Category.builder()
//                .name("Ubrania")
//                .build());
//        categoryRepository.save(Category.builder()
//                .name("Artykuły dla zwierząt")
//                .build());
//        categoryRepository.save(Category.builder()
//                .name("Chemia domowa")
//                .build());
//        categoryRepository.save(Category.builder()
//                .name("Zabawki")
//                .build());
//        categoryRepository.save(Category.builder()
//                .name("Meble")
//                .build());
//        log.debug("Data added successfully");
//    }
//}
