.class public final Ll/C$a;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Ll/F;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:[Ljava/lang/annotation/Annotation;

.field public final f:[[Ljava/lang/annotation/Annotation;

.field public final g:[Ljava/lang/reflect/Type;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Lj/C;

.field public v:Lj/F;

.field public w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:[Ll/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ll/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll/C$a;->a:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll/C$a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ll/F;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/C$a;->c:Ll/F;

    .line 3
    iput-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Ll/C$a;->g:[Ljava/lang/reflect/Type;

    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Ll/C$a;->f:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 359
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 360
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 361
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 362
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 363
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 364
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 365
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 366
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    sget-object v0, Ll/C$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 356
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 357
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 358
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lj/C;
    .locals 8

    .line 57
    new-instance v0, Lj/C$a;

    invoke-direct {v0}, Lj/C$a;-><init>()V

    .line 58
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 61
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    :try_start_0
    invoke-static {v4}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v5

    iput-object v5, p0, Ll/C$a;->v:Lj/F;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "Malformed content type: %s"

    invoke-static {v0, p1, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 66
    :cond_0
    invoke-virtual {v0, v6, v4}, Lj/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lj/C$a;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v1, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-static {p1, v1, v0}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 68
    :cond_2
    invoke-virtual {v0}, Lj/C$a;->a()Lj/C;

    move-result-object p1

    return-object p1
.end method

.method public a()Ll/C;
    .locals 6

    .line 1
    iget-object v0, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {p0, v4}, Ll/C$a;->a(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ll/C$a;->p:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 4
    iget-boolean v0, p0, Ll/C$a;->q:Z

    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p0, Ll/C$a;->s:Z

    if-nez v0, :cond_2

    .line 6
    iget-boolean v0, p0, Ll/C$a;->r:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 8
    :cond_2
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Ll/C$a;->f:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 10
    new-array v1, v0, [Ll/z;

    iput-object v1, p0, Ll/C$a;->x:[Ll/z;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 11
    iget-object v3, p0, Ll/C$a;->x:[Ll/z;

    iget-object v4, p0, Ll/C$a;->g:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    iget-object v5, p0, Ll/C$a;->f:[[Ljava/lang/annotation/Annotation;

    aget-object v5, v5, v1

    invoke-virtual {p0, v1, v4, v5}, Ll/C$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/z;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Ll/C$a;->t:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ll/C$a;->o:Z

    if-eqz v0, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Ll/C$a;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 14
    :cond_6
    :goto_3
    iget-boolean v0, p0, Ll/C$a;->r:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ll/C$a;->s:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ll/C$a;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ll/C$a;->j:Z

    if-nez v0, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 16
    :cond_8
    :goto_4
    iget-boolean v0, p0, Ll/C$a;->r:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ll/C$a;->h:Z

    if-eqz v0, :cond_9

    goto :goto_5

    .line 17
    :cond_9
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 18
    :cond_a
    :goto_5
    iget-boolean v0, p0, Ll/C$a;->s:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ll/C$a;->i:Z

    if-eqz v0, :cond_b

    goto :goto_6

    .line 19
    :cond_b
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 20
    :cond_c
    :goto_6
    new-instance v0, Ll/C;

    invoke-direct {v0, p0}, Ll/C;-><init>(Ll/C$a;)V

    return-object v0

    .line 21
    :cond_d
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-static {v0, v2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public final a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ll/z<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 69
    array-length v2, p3

    move-object v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, p3, v1

    .line 70
    invoke-virtual {p0, p1, p2, p3, v4}, Ll/C$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Ll/z;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    move-object v3, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    invoke-static {p2, p1, v0, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    move-object v1, v3

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    .line 72
    :cond_4
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "No Retrofit annotation found."

    invoke-static {p2, p1, v0, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Ll/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ll/z<",
            "*>;"
        }
    .end annotation

    .line 73
    instance-of v0, p4, Ll/b/v;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 75
    iget-boolean p3, p0, Ll/C$a;->o:Z

    if-nez p3, :cond_7

    .line 76
    iget-boolean p3, p0, Ll/C$a;->k:Z

    if-nez p3, :cond_6

    .line 77
    iget-boolean p3, p0, Ll/C$a;->l:Z

    if-nez p3, :cond_5

    .line 78
    iget-boolean p3, p0, Ll/C$a;->m:Z

    if-nez p3, :cond_4

    .line 79
    iget-boolean p3, p0, Ll/C$a;->n:Z

    if-nez p3, :cond_3

    .line 80
    iget-object p3, p0, Ll/C$a;->t:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 81
    iput-boolean v2, p0, Ll/C$a;->o:Z

    .line 82
    const-class p3, Lj/D;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/lang/String;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Class;

    .line 83
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 85
    :cond_1
    :goto_0
    new-instance p1, Ll/z$m;

    invoke-direct {p1}, Ll/z$m;-><init>()V

    return-object p1

    .line 86
    :cond_2
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Ll/C$a;->p:Ljava/lang/String;

    aput-object p4, p3, v3

    const-string p4, "@Url cannot be used with @%s URL"

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 87
    :cond_3
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Url parameter must not come after a @QueryMap."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 88
    :cond_4
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Url parameter must not come after a @QueryName."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 89
    :cond_5
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Url parameter must not come after a @Query."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 90
    :cond_6
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 91
    :cond_7
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "Multiple @Url method annotations found."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 92
    :cond_8
    instance-of v0, p4, Ll/b/q;

    if-eqz v0, :cond_e

    .line 93
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 94
    iget-boolean v0, p0, Ll/C$a;->l:Z

    if-nez v0, :cond_d

    .line 95
    iget-boolean v0, p0, Ll/C$a;->m:Z

    if-nez v0, :cond_c

    .line 96
    iget-boolean v0, p0, Ll/C$a;->n:Z

    if-nez v0, :cond_b

    .line 97
    iget-boolean v0, p0, Ll/C$a;->o:Z

    if-nez v0, :cond_a

    .line 98
    iget-object v0, p0, Ll/C$a;->t:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 99
    iput-boolean v2, p0, Ll/C$a;->k:Z

    .line 100
    check-cast p4, Ll/b/q;

    .line 101
    invoke-interface {p4}, Ll/b/q;->value()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0, p1, v0}, Ll/C$a;->a(ILjava/lang/String;)V

    .line 103
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    invoke-virtual {p1, p2, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 104
    new-instance p2, Ll/z$h;

    invoke-interface {p4}, Ll/b/q;->encoded()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Ll/z$h;-><init>(Ljava/lang/String;Ll/j;Z)V

    return-object p2

    .line 105
    :cond_9
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Ll/C$a;->p:Ljava/lang/String;

    aput-object p4, p3, v3

    const-string p4, "@Path can only be used with relative url on @%s"

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 106
    :cond_a
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 107
    :cond_b
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @QueryMap."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 108
    :cond_c
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @QueryName."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 109
    :cond_d
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @Query."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 110
    :cond_e
    instance-of v0, p4, Ll/b/r;

    const-string v1, "<String>)"

    const-string v4, " must include generic type (e.g., "

    if-eqz v0, :cond_12

    .line 111
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 112
    check-cast p4, Ll/b/r;

    .line 113
    invoke-interface {p4}, Ll/b/r;->value()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-interface {p4}, Ll/b/r;->encoded()Z

    move-result p4

    .line 115
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 116
    iput-boolean v2, p0, Ll/C$a;->l:Z

    .line 117
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 118
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    .line 119
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 120
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 121
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 122
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 123
    new-instance p2, Ll/z$i;

    invoke-direct {p2, v0, p1, p4}, Ll/z$i;-><init>(Ljava/lang/String;Ll/j;Z)V

    invoke-virtual {p2}, Ll/z;->b()Ll/z;

    move-result-object p1

    return-object p1

    .line 124
    :cond_f
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 127
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 128
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ll/C$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 129
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 130
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 131
    new-instance p2, Ll/z$i;

    invoke-direct {p2, v0, p1, p4}, Ll/z$i;-><init>(Ljava/lang/String;Ll/j;Z)V

    invoke-virtual {p2}, Ll/z;->a()Ll/z;

    move-result-object p1

    return-object p1

    .line 132
    :cond_11
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    .line 133
    invoke-virtual {p1, p2, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 134
    new-instance p2, Ll/z$i;

    invoke-direct {p2, v0, p1, p4}, Ll/z$i;-><init>(Ljava/lang/String;Ll/j;Z)V

    return-object p2

    .line 135
    :cond_12
    instance-of v0, p4, Ll/b/t;

    if-eqz v0, :cond_16

    .line 136
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 137
    check-cast p4, Ll/b/t;

    .line 138
    invoke-interface {p4}, Ll/b/t;->encoded()Z

    move-result p4

    .line 139
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    iput-boolean v2, p0, Ll/C$a;->m:Z

    .line 141
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 142
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_13

    .line 143
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 144
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 145
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 146
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 147
    new-instance p2, Ll/z$k;

    invoke-direct {p2, p1, p4}, Ll/z$k;-><init>(Ll/j;Z)V

    invoke-virtual {p2}, Ll/z;->b()Ll/z;

    move-result-object p1

    return-object p1

    .line 148
    :cond_13
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 150
    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 151
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ll/C$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 153
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 154
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 155
    new-instance p2, Ll/z$k;

    invoke-direct {p2, p1, p4}, Ll/z$k;-><init>(Ll/j;Z)V

    invoke-virtual {p2}, Ll/z;->a()Ll/z;

    move-result-object p1

    return-object p1

    .line 156
    :cond_15
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    .line 157
    invoke-virtual {p1, p2, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 158
    new-instance p2, Ll/z$k;

    invoke-direct {p2, p1, p4}, Ll/z$k;-><init>(Ll/j;Z)V

    return-object p2

    .line 159
    :cond_16
    instance-of v0, p4, Ll/b/s;

    const-string v5, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_1a

    .line 160
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 161
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 162
    iput-boolean v2, p0, Ll/C$a;->n:Z

    .line 163
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 164
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Ll/H;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 165
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    .line 166
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 167
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 168
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_17

    .line 169
    invoke-static {v2, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 170
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 171
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 172
    new-instance p2, Ll/z$j;

    check-cast p4, Ll/b/s;

    invoke-interface {p4}, Ll/b/s;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Ll/z$j;-><init>(Ll/j;Z)V

    return-object p2

    .line 173
    :cond_17
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@QueryMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 174
    :cond_18
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v5, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 175
    :cond_19
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@QueryMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 176
    :cond_1a
    instance-of v0, p4, Ll/b/h;

    if-eqz v0, :cond_1e

    .line 177
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 178
    check-cast p4, Ll/b/h;

    .line 179
    invoke-interface {p4}, Ll/b/h;->value()Ljava/lang/String;

    move-result-object p4

    .line 180
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 182
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1b

    .line 183
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 184
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 185
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 186
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 187
    new-instance p2, Ll/z$d;

    invoke-direct {p2, p4, p1}, Ll/z$d;-><init>(Ljava/lang/String;Ll/j;)V

    invoke-virtual {p2}, Ll/z;->b()Ll/z;

    move-result-object p1

    return-object p1

    .line 188
    :cond_1b
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 190
    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 191
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ll/C$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 193
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 194
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 195
    new-instance p2, Ll/z$d;

    invoke-direct {p2, p4, p1}, Ll/z$d;-><init>(Ljava/lang/String;Ll/j;)V

    invoke-virtual {p2}, Ll/z;->a()Ll/z;

    move-result-object p1

    return-object p1

    .line 196
    :cond_1d
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    .line 197
    invoke-virtual {p1, p2, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 198
    new-instance p2, Ll/z$d;

    invoke-direct {p2, p4, p1}, Ll/z$d;-><init>(Ljava/lang/String;Ll/j;)V

    return-object p2

    .line 199
    :cond_1e
    instance-of v0, p4, Ll/b/i;

    if-eqz v0, :cond_22

    .line 200
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 201
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 202
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 203
    const-class v0, Ljava/util/Map;

    invoke-static {p2, p4, v0}, Ll/H;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 204
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_20

    .line 205
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 206
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    .line 207
    const-class v0, Ljava/lang/String;

    if-ne v0, p4, :cond_1f

    .line 208
    invoke-static {v2, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 209
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 210
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 211
    new-instance p2, Ll/z$e;

    invoke-direct {p2, p1}, Ll/z$e;-><init>(Ll/j;)V

    return-object p2

    .line 212
    :cond_1f
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@HeaderMap keys must be of type String: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 213
    :cond_20
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v5, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 214
    :cond_21
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@HeaderMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 215
    :cond_22
    instance-of v0, p4, Ll/b/c;

    if-eqz v0, :cond_27

    .line 216
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 217
    iget-boolean v0, p0, Ll/C$a;->r:Z

    if-eqz v0, :cond_26

    .line 218
    check-cast p4, Ll/b/c;

    .line 219
    invoke-interface {p4}, Ll/b/c;->value()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-interface {p4}, Ll/b/c;->encoded()Z

    move-result p4

    .line 221
    iput-boolean v2, p0, Ll/C$a;->h:Z

    .line 222
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 223
    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 224
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_23

    .line 225
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 226
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 227
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 228
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 229
    new-instance p2, Ll/z$b;

    invoke-direct {p2, v0, p1, p4}, Ll/z$b;-><init>(Ljava/lang/String;Ll/j;Z)V

    invoke-virtual {p2}, Ll/z;->b()Ll/z;

    move-result-object p1

    return-object p1

    .line 230
    :cond_23
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 232
    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 233
    :cond_24
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 234
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ll/C$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 235
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 236
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 237
    new-instance p2, Ll/z$b;

    invoke-direct {p2, v0, p1, p4}, Ll/z$b;-><init>(Ljava/lang/String;Ll/j;Z)V

    invoke-virtual {p2}, Ll/z;->a()Ll/z;

    move-result-object p1

    return-object p1

    .line 238
    :cond_25
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    .line 239
    invoke-virtual {p1, p2, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 240
    new-instance p2, Ll/z$b;

    invoke-direct {p2, v0, p1, p4}, Ll/z$b;-><init>(Ljava/lang/String;Ll/j;Z)V

    return-object p2

    .line 241
    :cond_26
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Field parameters can only be used with form encoding."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 242
    :cond_27
    instance-of v0, p4, Ll/b/d;

    if-eqz v0, :cond_2c

    .line 243
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 244
    iget-boolean v0, p0, Ll/C$a;->r:Z

    if-eqz v0, :cond_2b

    .line 245
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 246
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 247
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Ll/H;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 248
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_29

    .line 249
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 250
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 251
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_28

    .line 252
    invoke-static {v2, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 253
    iget-object p2, p0, Ll/C$a;->c:Ll/F;

    .line 254
    invoke-virtual {p2, p1, p3}, Ll/F;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 255
    iput-boolean v2, p0, Ll/C$a;->h:Z

    .line 256
    new-instance p2, Ll/z$c;

    check-cast p4, Ll/b/d;

    invoke-interface {p4}, Ll/b/d;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Ll/z$c;-><init>(Ll/j;Z)V

    return-object p2

    .line 257
    :cond_28
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@FieldMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 258
    :cond_29
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v5, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 259
    :cond_2a
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@FieldMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 260
    :cond_2b
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@FieldMap parameters can only be used with form encoding."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 261
    :cond_2c
    instance-of v0, p4, Ll/b/o;

    if-eqz v0, :cond_3b

    .line 262
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 263
    iget-boolean v0, p0, Ll/C$a;->s:Z

    if-eqz v0, :cond_3a

    .line 264
    check-cast p4, Ll/b/o;

    .line 265
    iput-boolean v2, p0, Ll/C$a;->i:Z

    .line 266
    invoke-interface {p4}, Ll/b/o;->value()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 269
    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_2f

    .line 270
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_2e

    .line 271
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 272
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 273
    const-class p3, Lj/G$b;

    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 274
    sget-object p1, Ll/z$l;->a:Ll/z$l;

    invoke-virtual {p1}, Ll/z;->b()Ll/z;

    move-result-object p1

    return-object p1

    .line 275
    :cond_2d
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 276
    :cond_2e
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 278
    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 279
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_31

    .line 280
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 281
    const-class p3, Lj/G$b;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 282
    sget-object p1, Ll/z$l;->a:Ll/z$l;

    invoke-virtual {p1}, Ll/z;->a()Ll/z;

    move-result-object p1

    return-object p1

    .line 283
    :cond_30
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 284
    :cond_31
    const-class p2, Lj/G$b;

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 285
    sget-object p1, Ll/z$l;->a:Ll/z$l;

    return-object p1

    .line 286
    :cond_32
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_33
    const/4 v6, 0x4

    .line 287
    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "Content-Disposition"

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form-data; name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    const-string v2, "Content-Transfer-Encoding"

    aput-object v2, v6, v0

    const/4 v0, 0x3

    .line 288
    invoke-interface {p4}, Ll/b/o;->encoding()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v0

    .line 289
    invoke-static {v6}, Lj/C;->a([Ljava/lang/String;)Lj/C;

    move-result-object p4

    .line 290
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_36

    .line 291
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_35

    .line 292
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 293
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 294
    const-class v0, Lj/G$b;

    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 295
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    iget-object v0, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    .line 296
    invoke-virtual {p1, p2, p3, v0}, Ll/F;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 297
    new-instance p2, Ll/z$f;

    invoke-direct {p2, p4, p1}, Ll/z$f;-><init>(Lj/C;Ll/j;)V

    invoke-virtual {p2}, Ll/z;->b()Ll/z;

    move-result-object p1

    return-object p1

    .line 298
    :cond_34
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 299
    :cond_35
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 301
    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 302
    :cond_36
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 303
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Ll/C$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 304
    const-class v0, Lj/G$b;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 305
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    iget-object v0, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    .line 306
    invoke-virtual {p1, p2, p3, v0}, Ll/F;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 307
    new-instance p2, Ll/z$f;

    invoke-direct {p2, p4, p1}, Ll/z$f;-><init>(Lj/C;Ll/j;)V

    invoke-virtual {p2}, Ll/z;->a()Ll/z;

    move-result-object p1

    return-object p1

    .line 308
    :cond_37
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 309
    :cond_38
    const-class v0, Lj/G$b;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 310
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    iget-object v0, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    .line 311
    invoke-virtual {p1, p2, p3, v0}, Ll/F;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 312
    new-instance p2, Ll/z$f;

    invoke-direct {p2, p4, p1}, Ll/z$f;-><init>(Lj/C;Ll/j;)V

    return-object p2

    .line 313
    :cond_39
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 314
    :cond_3a
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Part parameters can only be used with multipart encoding."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 315
    :cond_3b
    instance-of v0, p4, Ll/b/p;

    if-eqz v0, :cond_41

    .line 316
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 317
    iget-boolean v0, p0, Ll/C$a;->s:Z

    if-eqz v0, :cond_40

    .line 318
    iput-boolean v2, p0, Ll/C$a;->i:Z

    .line 319
    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 320
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 321
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Ll/H;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 322
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3e

    .line 323
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 324
    invoke-static {v3, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 325
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_3d

    .line 326
    invoke-static {v2, p2}, Ll/H;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 327
    const-class v0, Lj/G$b;

    invoke-static {p2}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 328
    iget-object p1, p0, Ll/C$a;->c:Ll/F;

    iget-object v0, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    .line 329
    invoke-virtual {p1, p2, p3, v0}, Ll/F;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 330
    check-cast p4, Ll/b/p;

    .line 331
    new-instance p2, Ll/z$g;

    invoke-interface {p4}, Ll/b/p;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ll/z$g;-><init>(Ll/j;Ljava/lang/String;)V

    return-object p2

    .line 332
    :cond_3c
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 333
    :cond_3d
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@PartMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 334
    :cond_3e
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v5, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 335
    :cond_3f
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 336
    :cond_40
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap parameters can only be used with multipart encoding."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 337
    :cond_41
    instance-of p4, p4, Ll/b/a;

    if-eqz p4, :cond_44

    .line 338
    invoke-virtual {p0, p1, p2}, Ll/C$a;->a(ILjava/lang/reflect/Type;)V

    .line 339
    iget-boolean p4, p0, Ll/C$a;->r:Z

    if-nez p4, :cond_43

    iget-boolean p4, p0, Ll/C$a;->s:Z

    if-nez p4, :cond_43

    .line 340
    iget-boolean p4, p0, Ll/C$a;->j:Z

    if-nez p4, :cond_42

    .line 341
    :try_start_0
    iget-object p4, p0, Ll/C$a;->c:Ll/F;

    iget-object v0, p0, Ll/C$a;->e:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Ll/F;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    iput-boolean v2, p0, Ll/C$a;->j:Z

    .line 343
    new-instance p2, Ll/z$a;

    invoke-direct {p2, p1}, Ll/z$a;-><init>(Ll/j;)V

    return-object p2

    :catch_0
    move-exception p3

    .line 344
    iget-object p4, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "Unable to create @Body converter for %s"

    invoke-static {p4, p3, p1, p2, v0}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 345
    :cond_42
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "Multiple @Body method annotations found."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 346
    :cond_43
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-static {p2, p1, p4, p3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_44
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    .line 349
    sget-object v0, Ll/C$a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Ll/C$a;->w:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ll/C$a;->t:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, p1, p2, v3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 352
    :cond_1
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ll/C$a;->a:Ljava/util/regex/Pattern;

    .line 353
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    .line 354
    invoke-static {v0, p1, p2, v3}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(ILjava/lang/reflect/Type;)V
    .locals 3

    .line 347
    invoke-static {p2}, Ll/H;->d(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-static {v0, p1, p2, v1}, Ll/H;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 44
    iget-object v0, p0, Ll/C$a;->p:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 45
    iput-object p1, p0, Ll/C$a;->p:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Ll/C$a;->q:Z

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v2

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    sget-object p3, Ll/C$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 52
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-static {p2, p1, p3}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 54
    :cond_2
    :goto_0
    iput-object p2, p0, Ll/C$a;->t:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Ll/C$a;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ll/C$a;->w:Ljava/util/Set;

    return-void

    .line 56
    :cond_3
    iget-object p2, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-static {p2, p1, p3}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/annotation/Annotation;)V
    .locals 3

    .line 22
    instance-of v0, p1, Ll/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Ll/b/b;

    invoke-interface {p1}, Ll/b/b;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1, v1}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Ll/b/e;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Ll/b/e;

    invoke-interface {p1}, Ll/b/e;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-virtual {p0, v0, p1, v1}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 26
    :cond_1
    instance-of v0, p1, Ll/b/f;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Ll/b/f;

    invoke-interface {p1}, Ll/b/f;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {p0, v0, p1, v1}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Ll/b/l;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Ll/b/l;

    invoke-interface {p1}, Ll/b/l;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1, v2}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Ll/b/m;

    if-eqz v0, :cond_4

    .line 31
    check-cast p1, Ll/b/m;

    invoke-interface {p1}, Ll/b/m;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, v2}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 32
    :cond_4
    instance-of v0, p1, Ll/b/n;

    if-eqz v0, :cond_5

    .line 33
    check-cast p1, Ll/b/n;

    invoke-interface {p1}, Ll/b/n;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1, v2}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 34
    :cond_5
    instance-of v0, p1, Ll/b/k;

    if-eqz v0, :cond_6

    .line 35
    check-cast p1, Ll/b/k;

    invoke-interface {p1}, Ll/b/k;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0, p1, v1}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 36
    :cond_6
    instance-of v0, p1, Ll/b/g;

    if-eqz v0, :cond_7

    .line 37
    check-cast p1, Ll/b/g;

    .line 38
    invoke-interface {p1}, Ll/b/g;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ll/b/g;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ll/b/g;->hasBody()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Ll/C$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 39
    :cond_7
    instance-of v0, p1, Ll/b/j;

    if-eqz v0, :cond_9

    .line 40
    check-cast p1, Ll/b/j;

    invoke-interface {p1}, Ll/b/j;->value()[Ljava/lang/String;

    move-result-object p1

    .line 41
    array-length v0, p1

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {p0, p1}, Ll/C$a;->a([Ljava/lang/String;)Lj/C;

    move-result-object p1

    iput-object p1, p0, Ll/C$a;->u:Lj/C;

    goto :goto_0

    .line 43
    :cond_8
    iget-object p1, p0, Ll/C$a;->d:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "@Headers annotation is empty."

    invoke-static {p1, v1, v0}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_0
    return-void
.end method
