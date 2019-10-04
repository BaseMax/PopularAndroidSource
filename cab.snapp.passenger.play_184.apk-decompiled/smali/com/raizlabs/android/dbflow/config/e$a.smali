.class public final Lcom/raizlabs/android/dbflow/config/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/d;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e$a;->b:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e$a;->c:Ljava/util/Map;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/e$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addDatabaseConfig(Lcom/raizlabs/android/dbflow/config/b;)Lcom/raizlabs/android/dbflow/config/e$a;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e$a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/b;->databaseClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addDatabaseHolder(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/d;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/config/e$a;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/raizlabs/android/dbflow/config/e;
    .locals 1

    .line 93
    new-instance v0, Lcom/raizlabs/android/dbflow/config/e;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/e;-><init>(Lcom/raizlabs/android/dbflow/config/e$a;)V

    return-object v0
.end method

.method public final openDatabasesOnInit(Z)Lcom/raizlabs/android/dbflow/config/e$a;
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/e$a;->d:Z

    return-object p0
.end method
