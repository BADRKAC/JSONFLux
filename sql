StringBuilder sqlclient = new StringBuilder(
									" INSERT INTO CLIENTSCCB (Z01,C01,C02,C03,C04,C05,C06,C07,C08,C09,C10,C11)"
											+ "values (:parameter0,:parameter1,:parameter2,:parameter3,:parameter4,:parameter5,:parameter6,:parameter7,"
											+ ":parameter8,:parameter9,:parameter10,:parameter11) ");
							int traitement = session
									.createSQLQuery(sqlclient.toString())
									.setParameter("parameter0",  cpt.getZ01())
									.setParameter("parameter1",  cpt.getC01())
									.setParameter("parameter2",  cpt.getC02())
									.setParameter("parameter3",  cpt.getC03())
									.setParameter("parameter4",  cpt.getC04())
									.setParameter("parameter5",  cpt.getC05())
									.setParameter("parameter6",  cpt.getC06())
									.setParameter("parameter7",  cpt.getC07())
									.setParameter("parameter8",  cpt.getC08())
									.setParameter("parameter9",  cpt.getC09())
									.setParameter("parameter10", cpt.getC10())
									.setParameter("parameter11", cpt.getC11())
									.executeUpdate();
							session.getTransaction().commit();
							session.close();
