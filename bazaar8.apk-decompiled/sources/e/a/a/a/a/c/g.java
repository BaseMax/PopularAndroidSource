package e.a.a.a.a.c;

import java.util.Collection;

/* compiled from: Dependency */
public interface g<T> {
    void addDependency(T t);

    boolean areDependenciesMet();

    Collection<T> getDependencies();
}
