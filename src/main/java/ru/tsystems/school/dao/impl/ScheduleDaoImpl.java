package ru.tsystems.school.dao.impl;

import org.springframework.stereotype.Repository;
import ru.tsystems.school.dao.AbstractJpaDao;
import ru.tsystems.school.dao.ScheduleDao;
import ru.tsystems.school.model.entity.Schedule;

import java.util.List;

@Repository
public class ScheduleDaoImpl extends AbstractJpaDao<Schedule> implements ScheduleDao {

    public ScheduleDaoImpl() {
        setClazz(Schedule.class);
    }

    private static final String STATION_ID = "stationId";
    private static final String TRAIN_ID = "trainId";

    @Override
    public List<Schedule> findAll() {

        return getEntityManager()
                .createQuery("select s from Schedule s", Schedule.class)
                .getResultList();
    }

    @Override
    public List<Schedule> findSchedulesByTrainId(int id) {

        return getEntityManager().createQuery(
                "select t from Schedule t where t.train.id =:id", Schedule.class)
                .setParameter("id", id)
                .getResultList();
    }

    @Override
    public List<Schedule> findSchedulesByStationId(int id) {

        return getEntityManager().createQuery(
                "select t from Schedule t where t.station.id =:id", Schedule.class)
                .setParameter("id", id)
                .getResultList();
    }

    @Override
    public void deleteTrainFromSchedule(int trainId, int stationId) {

        getEntityManager().createNativeQuery("delete from railway.schedule where station_id =:stationId" +
                " and train_id =:trainId")
                .setParameter(STATION_ID, stationId)
                .setParameter(TRAIN_ID, trainId)
                .executeUpdate();
    }

}
