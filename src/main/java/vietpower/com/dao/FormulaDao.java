package vietpower.com.dao;

import vietpower.com.model.Formula;

import java.util.List;

/**
 * Created by HauKute on 11/25/2018.
 */
public interface FormulaDao {
    List<Formula> findAll();

    void persist(Formula formula);

    List<Formula> findByCollection(Long collectionId);

    void update(Formula dbItem);

    Formula findById(Long formulaId);

    void deleteAll();

    Formula findByCode(String formulaCode, Long machineId);
}
