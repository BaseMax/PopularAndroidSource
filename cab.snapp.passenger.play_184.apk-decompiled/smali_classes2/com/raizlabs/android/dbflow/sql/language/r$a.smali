.class public final Lcom/raizlabs/android/dbflow/sql/language/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/sql/language/a/a;


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/r$a;->a:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/a/a;B)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/r$a;-><init>(Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-void
.end method


# virtual methods
.method public final as(Lcom/raizlabs/android/dbflow/sql/SQLiteType;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 4

    .line 278
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/r$a;->a:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getTable()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/r$a;->a:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 279
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v2

    const/4 v3, 0x0

    .line 281
    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldAddIdentifierToAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v2

    .line 282
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    .line 284
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/r;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    aput-object v0, v1, v3

    const-string v0, "CAST"

    invoke-direct {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/r;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object p1
.end method
