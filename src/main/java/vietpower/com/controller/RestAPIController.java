package vietpower.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import vietpower.com.model.*;
import vietpower.com.service.*;

import java.io.Serializable;
import java.util.List;

/**
 * Created by HauKute on 12/3/2018.
 */
@RestController
public class RestAPIController implements Serializable{
    @Autowired
    FormulaService formulaService;
    @Autowired
    BaseService baseService;

    @Autowired
    ColourantService colourantService;

    @Autowired
    CollectionService collectionService;

    @Autowired
    ProductService productService;

    @RequestMapping(value = "/server/api/formula/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List getAllFormula(){
        return formulaService.findAll();
    }

    @RequestMapping(value = "/server/api/base/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List getAllBase(){
        return baseService.findAll();
    }


    @RequestMapping(value = "/server/api/colourant/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List getAllColourant(){
        List<Colourant> colourants = colourantService.findAll();
        return colourants;
    }

    @RequestMapping(value = "/server/api/collection/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List getAllCollection(){
        List<Collection> collections = collectionService.findAll();
        return collections;
    }

    @RequestMapping(value = "/server/api/product/getAll", method = RequestMethod.GET)
    @ResponseBody
    public List getAllProduct(){
        List<Product> listtItems = productService.findAll();
        return listtItems;
    }
}
