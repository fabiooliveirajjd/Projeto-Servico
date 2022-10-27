package servico.DAO;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;
import org.springframework.beans.factory.annotation.Autowired;

	public abstract class GenericDAO<T, ID extends Serializable> implements Serializable {

	private static final long serialVersionUID = 1L;

	private Class<T> type;

	@Autowired
	private SessionFactory sessionFactory;

	protected Class<T> getType() {
	return this.type;
	}

	protected String getClassName() {
	return this.type.getName();
	}

	@SuppressWarnings("unchecked")
	public GenericDAO() {
	Type t = getClass().getGenericSuperclass();
	if (t instanceof ParameterizedType) {
	ParameterizedType pt = (ParameterizedType) t;
	this.type = (Class<T>) pt.getActualTypeArguments()[0];
	}
	}

	public void delete(final T obj) {
	currentSession().delete(obj);
	}

	@SuppressWarnings("unchecked")
	public T find(final ID id) {
	return (T) currentSession().get(this.type, id);
	}

	public void save(final T obj) {
	currentSession().saveOrUpdate(obj);
	}

	public void persist(final T obj) {
	currentSession().persist(obj);
	}

	/*
	* public long countAll(final Map<String, Object> params) {
	*
	* final StringBuffer queryString = new StringBuffer(
	* "SELECT count(o) from ");
	*
	* queryString.append(type.getSimpleName()).append(" o ");
	* queryString.append(this.getQueryClauses(params, null));
	*
	* final Query query = currentSession().createQuery(queryString.toString());
	*
	* return (Long) query.uniqueResult(); }
	*/

	public void setSessionFactory(final SessionFactory s) {
	this.sessionFactory = s;
	}

	protected Session currentSession() {
	if (this.sessionFactory == null) {
	throw new IllegalStateException("Session has not been set on DAO before usage");
	}
	return this.sessionFactory.getCurrentSession();
	}

	public Class<T> getPersistentClass() {
	return this.type;
	}

	@SuppressWarnings("unchecked")
	public T findById(final ID id, final boolean lock) {
	T entity;
	entity = (T) currentSession().load(getPersistentClass(), id);

	return entity;
	}

	public List<T> findAll() {
	return findByCriteria();
	}

	public List<T> findByExample(final T exampleInstance) {
	return findByExample(exampleInstance, new String[] {});
	}

	@SuppressWarnings("unchecked")
	public List<T> findByExample(final T exampleInstance, final String[] excludeProperty) {
	Criteria crit = currentSession().createCriteria(getPersistentClass());
	Example example = Example.create(exampleInstance);
	for (String exclude : excludeProperty) {
	example.excludeProperty(exclude);
	}
	crit.add(example);
	return crit.list();
	}

	public T makePersistent(final T entity) {

	// HibernateTemplate hibernateTemplate = new
	// HibernateTemplate(sessionFactory);
	// hibernateTemplate.saveOrUpdate(entity);
	currentSession().saveOrUpdate(entity);

	return entity;
	}

	public T merge(T entity) {
	entity = (T) currentSession().merge(entity);
	return entity;
	}

	public void makeTransient(final T entity) {
	currentSession().delete(entity);
	}

	public void flush() {
	currentSession().flush();
	}

	public void clear() {
	currentSession().clear();
	}

	public void close() {
	currentSession().close();
	}

	public void evict(final T entity) {
	currentSession().evict(entity);
	}

	/**
	* Use this inside subclasses as a convenience method.
	*/
	@SuppressWarnings("unchecked")
	protected List<T> findByCriteria(final Criterion... criterion) {
	Criteria crit = currentSession().createCriteria(getPersistentClass());
	for (Criterion c : criterion) {
	crit.add(c);
	}
	return crit.list();
	}

	}
