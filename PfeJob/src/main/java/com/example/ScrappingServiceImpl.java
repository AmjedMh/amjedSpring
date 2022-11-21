package com.example;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.example.entities.Offre;


@Service
@Transactional
public class ScrappingServiceImpl implements ScrappingService{
	//Reading data from property file to a list
    @Value("#{'${website.urls}'.split(',')}")
    List<String> urls;
	@Override
	public Set<Offre> getOffre(String offre) {
		//Using a set here to only store unique elements
        Set<Offre> offres = new HashSet<>();
        //Traversing through the urls
        for (String url: urls) {

            if (url.contains("tanitjobs")) {
                //method to extract data from Ikman.lk
                extractDataFromtanit(offres, url + offre);
          

        }}

        return offres;
    }

    private void extractDataFromtanit(Set<Offre> offres, String url) {

        try {            //loading the HTML to a Document Object
            Document document = Jsoup.connect(url).get();            //Selecting the element which contains the ad list
            Element element = document.getElementById("listing-item__list");
            //getting all the <a> tag elements inside the content div tag
            Elements elements = element.getElementsByTag("a");
           //traversing through the elements
            for (Element ads: elements) {
                Offre offre = new Offre();

                if (!StringUtils.isEmpty(ads.attr("title")) ) {                    //mapping data to the model class
                    offre.setTitre(ads.attr("title"));
                    offre.setPoste(ads.attr("href"));
                }
                if (offre.getPoste() != null) offres.add(offre);
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }


	
	

}
