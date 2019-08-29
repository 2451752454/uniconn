package com.unicon.mapper;

import com.unicon.entity.MUEU;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

public interface ShopMapper {
    public List<MUEU> MENU()throws SQLException, IOException;
}
