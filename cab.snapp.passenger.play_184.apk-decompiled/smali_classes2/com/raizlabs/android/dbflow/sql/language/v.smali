.class public final Lcom/raizlabs/android/dbflow/sql/language/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# static fields
.field public static final ASCENDING:Ljava/lang/String; = "ASC"

.field public static final DESCENDING:Ljava/lang/String; = "DESC"


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/language/s;

.field private b:Z

.field private c:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->a:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/v;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    .line 46
    iput-boolean p2, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->d:Ljava/lang/String;

    return-void
.end method

.method public static fromNameAlias(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/v;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/v;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static fromProperty(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/v;

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/a;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/v;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/v;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final ascending()Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->b:Z

    return-object p0
.end method

.method public final collate(Lcom/raizlabs/android/dbflow/annotation/Collate;)Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->c:Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-object p0
.end method

.method public final descending()Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->b:Z

    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->a:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->c:Lcom/raizlabs/android/dbflow/annotation/Collate;

    if-eqz v2, :cond_0

    const-string v2, "COLLATE "

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->c:Lcom/raizlabs/android/dbflow/annotation/Collate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/v;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "ASC"

    goto :goto_0

    :cond_1
    const-string v1, "DESC"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/v;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
