.class public final Lcom/raizlabs/android/dbflow/config/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field b:Lcom/raizlabs/android/dbflow/sql/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field c:Lcom/raizlabs/android/dbflow/sql/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field d:Lcom/raizlabs/android/dbflow/sql/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/g$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build()Lcom/raizlabs/android/dbflow/config/g;
    .locals 1

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/config/g;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/g;-><init>(Lcom/raizlabs/android/dbflow/config/g$a;)V

    return-object v0
.end method

.method public final listModelLoader(Lcom/raizlabs/android/dbflow/sql/b/b;)Lcom/raizlabs/android/dbflow/config/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/b<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/g$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/g$a;->d:Lcom/raizlabs/android/dbflow/sql/b/b;

    return-object p0
.end method

.method public final modelAdapterModelSaver(Lcom/raizlabs/android/dbflow/sql/c/b;)Lcom/raizlabs/android/dbflow/config/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/c/b<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/g$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/g$a;->b:Lcom/raizlabs/android/dbflow/sql/c/b;

    return-object p0
.end method

.method public final singleModelLoader(Lcom/raizlabs/android/dbflow/sql/b/f;)Lcom/raizlabs/android/dbflow/config/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/f<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/g$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/g$a;->c:Lcom/raizlabs/android/dbflow/sql/b/f;

    return-object p0
.end method
