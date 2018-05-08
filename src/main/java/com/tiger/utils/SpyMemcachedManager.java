package com.tiger.utils;

import net.spy.memcached.CASResponse;
import net.spy.memcached.CASValue;
import net.spy.memcached.MemcachedClient;

public class SpyMemcachedManager {
	private static MemcachedClient memcachedClient;
	private static final SpyMemcachedManager spyMemcachedManager = new SpyMemcachedManager();

	private SpyMemcachedManager() {
	}
	//饿汉单例模式
	public static SpyMemcachedManager getInstance() {
		return spyMemcachedManager;
	}

	/**
	 * Set方法.
	 * 
	 * @param key
	 *            主键
	 * @param expiredTime
	 *            过期时间：<br>
	 *            值为0时，表示不过期；<br>
	 *            值小于60*60*24*30(30天)，单位为秒；<br>
	 *            值大于60*60*24*30(30天)，则为绝对日期。<br>
	 * @param value
	 *            内容
	 */
	public static boolean set(String key, int expiredTime, Object value) {
		return memcachedClient.add(key, expiredTime, value) != null;
	}

	/**
	 * get方法.
	 * 
	 * @param key
	 *            主键
	 * @return
	 */
	public static Object get(String key) {
		return memcachedClient.get(key);
	}

	/**
	 * delete方法.
	 * 
	 * @param key
	 *            主键
	 * @return
	 */
	public static boolean deleteCache(String key) {
		return memcachedClient.delete(key) != null;
	}

	/**
	 * gets方法.
	 * 
	 * @param key
	 *            主键
	 * @return
	 */
	public static <T> CASValue<T> gets(String key) {
		return (CASValue<T>) memcachedClient.gets(key);
	}

	/**
	 * Check and Set方法.
	 */
	public static CASResponse cas(String key, long casId, Object value) {
		return memcachedClient.cas(key, casId, value);
	}

	public MemcachedClient getMemcachedClient() {
		return memcachedClient;
	}

	public void setMemcachedClient(MemcachedClient memcachedClient) {
		this.memcachedClient = memcachedClient;
	}

}
