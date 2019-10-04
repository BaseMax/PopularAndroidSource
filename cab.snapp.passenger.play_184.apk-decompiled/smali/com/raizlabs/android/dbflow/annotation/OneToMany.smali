.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/OneToMany;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/OneToMany;
        efficientMethods = true
        isVariablePrivate = false
        methods = {
            .enum Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;->LOAD:Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
        }
        variableName = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract efficientMethods()Z
.end method

.method public abstract isVariablePrivate()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract methods()[Lcom/raizlabs/android/dbflow/annotation/OneToMany$Method;
.end method

.method public abstract variableName()Ljava/lang/String;
.end method
