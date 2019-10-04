.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Lcom/raizlabs/android/dbflow/sql/language/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;",
        "Lcom/raizlabs/android/dbflow/sql/language/a;"
    }
.end annotation


# virtual methods
.method public abstract getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;
.end method

.method public abstract getTable()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method
