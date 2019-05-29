package com.tiger.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class PropertiesUtil {
	private static final String CONFIG_FILEPATH = ".\\src\\main\\resources\\config.properties";
    private static Properties prop;
    static {
          prop = new Properties();
          try {
               InputStream in = new FileInputStream(CONFIG_FILEPATH);
               prop.load(in);
          } catch (IOException e) {
               e.printStackTrace();
          }
    }
    public static String getPropertie(String key) {
          if (null == key) {
               return "";
          }
          if (null == prop) {
               return "";
          }
          String value = prop.getProperty(key);
          if (null == value) {
               return "";
          }
          try {
               return new String(value.getBytes("ISO8859-1"), "UTF-8");
          } catch (UnsupportedEncodingException e) {
               e.printStackTrace();
          }
          return "";
    }

}
