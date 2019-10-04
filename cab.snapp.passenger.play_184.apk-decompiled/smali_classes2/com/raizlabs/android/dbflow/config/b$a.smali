.class public final Lcom/raizlabs/android/dbflow/config/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lcom/raizlabs/android/dbflow/config/b$b;

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field c:Lcom/raizlabs/android/dbflow/config/b$c;

.field d:Lcom/raizlabs/android/dbflow/structure/b/f;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/g;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/raizlabs/android/dbflow/d/e;

.field g:Z

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/b$a;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/b$a;->g:Z

    .line 133
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final addTableConfig(Lcom/raizlabs/android/dbflow/config/g;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/config/g<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/b$a;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/b$a;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/g;->tableClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lcom/raizlabs/android/dbflow/config/b;
    .locals 1

    .line 191
    new-instance v0, Lcom/raizlabs/android/dbflow/config/b;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/b;-><init>(Lcom/raizlabs/android/dbflow/config/b$a;)V

    return-object v0
.end method

.method public final databaseName(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final extensionName(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final helperListener(Lcom/raizlabs/android/dbflow/structure/b/f;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->d:Lcom/raizlabs/android/dbflow/structure/b/f;

    return-object p0
.end method

.method public final inMemory()Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/b$a;->g:Z

    return-object p0
.end method

.method public final modelNotifier(Lcom/raizlabs/android/dbflow/d/e;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->f:Lcom/raizlabs/android/dbflow/d/e;

    return-object p0
.end method

.method public final openHelper(Lcom/raizlabs/android/dbflow/config/b$b;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->a:Lcom/raizlabs/android/dbflow/config/b$b;

    return-object p0
.end method

.method public final transactionManagerCreator(Lcom/raizlabs/android/dbflow/config/b$c;)Lcom/raizlabs/android/dbflow/config/b$a;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/b$a;->c:Lcom/raizlabs/android/dbflow/config/b$c;

    return-object p0
.end method
