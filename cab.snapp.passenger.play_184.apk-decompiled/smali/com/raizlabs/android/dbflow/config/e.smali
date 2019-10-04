.class public final Lcom/raizlabs/android/dbflow/config/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
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

.field private final b:Ljava/util/Map;
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

.field private final c:Landroid/content/Context;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/e$a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->a:Ljava/util/Set;

    .line 29
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    .line 30
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->c:Landroid/content/Context;

    .line 31
    iget-boolean p1, p1, Lcom/raizlabs/android/dbflow/config/e$a;->d:Z

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/e;->d:Z

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/raizlabs/android/dbflow/config/e$a;
    .locals 1

    .line 19
    new-instance v0, Lcom/raizlabs/android/dbflow/config/e$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/e$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final databaseConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final databaseHolders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/d;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final getConfigForDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/b;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/e;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/b;

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final openDatabasesOnInit()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/e;->d:Z

    return v0
.end method
