.class public abstract Lcom/raizlabs/android/dbflow/structure/g;
.super Lcom/raizlabs/android/dbflow/structure/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModelView:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/b<",
        "TTModelView;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public abstract getCreationQuery()Ljava/lang/String;
.end method

.method public abstract getViewName()Ljava/lang/String;
.end method
