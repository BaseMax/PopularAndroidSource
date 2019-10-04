.class public final Lcom/raizlabs/android/dbflow/sql/language/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->d:Z

    .line 228
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->e:Z

    .line 229
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->f:Z

    .line 230
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->g:Z

    .line 234
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 2

    .line 304
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s$a;B)V

    return-object v0
.end method

.method public final distinct()Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 1

    const-string v0, "DISTINCT"

    .line 241
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->keyword(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    return-object v0
.end method

.method public final keyword(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final shouldAddIdentifierToAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->g:Z

    return-object p0
.end method

.method public final shouldAddIdentifierToName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->f:Z

    return-object p0
.end method

.method public final shouldStripAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->e:Z

    return-object p0
.end method

.method public final shouldStripIdentifier(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->d:Z

    return-object p0
.end method

.method public final withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s$a;->c:Ljava/lang/String;

    return-object p0
.end method
