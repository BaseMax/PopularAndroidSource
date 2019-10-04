.class public abstract Lb/w/I;
.super Ljava/lang/Object;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/w/I$d;,
        Lb/w/I$a;,
        Lb/w/I$e;,
        Lb/w/I$b;,
        Lb/w/I$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final d:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final f:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final h:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final j:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lb/w/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/w/I<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb/w/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/w/z;-><init>(Z)V

    sput-object v0, Lb/w/I;->a:Lb/w/I;

    .line 2
    new-instance v0, Lb/w/A;

    invoke-direct {v0, v1}, Lb/w/A;-><init>(Z)V

    sput-object v0, Lb/w/I;->b:Lb/w/I;

    .line 3
    new-instance v0, Lb/w/B;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lb/w/B;-><init>(Z)V

    sput-object v0, Lb/w/I;->c:Lb/w/I;

    .line 4
    new-instance v0, Lb/w/C;

    invoke-direct {v0, v1}, Lb/w/C;-><init>(Z)V

    sput-object v0, Lb/w/I;->d:Lb/w/I;

    .line 5
    new-instance v0, Lb/w/D;

    invoke-direct {v0, v2}, Lb/w/D;-><init>(Z)V

    sput-object v0, Lb/w/I;->e:Lb/w/I;

    .line 6
    new-instance v0, Lb/w/E;

    invoke-direct {v0, v1}, Lb/w/E;-><init>(Z)V

    sput-object v0, Lb/w/I;->f:Lb/w/I;

    .line 7
    new-instance v0, Lb/w/F;

    invoke-direct {v0, v2}, Lb/w/F;-><init>(Z)V

    sput-object v0, Lb/w/I;->g:Lb/w/I;

    .line 8
    new-instance v0, Lb/w/G;

    invoke-direct {v0, v1}, Lb/w/G;-><init>(Z)V

    sput-object v0, Lb/w/I;->h:Lb/w/I;

    .line 9
    new-instance v0, Lb/w/H;

    invoke-direct {v0, v2}, Lb/w/H;-><init>(Z)V

    sput-object v0, Lb/w/I;->i:Lb/w/I;

    .line 10
    new-instance v0, Lb/w/x;

    invoke-direct {v0, v2}, Lb/w/x;-><init>(Z)V

    sput-object v0, Lb/w/I;->j:Lb/w/I;

    .line 11
    new-instance v0, Lb/w/y;

    invoke-direct {v0, v2}, Lb/w/y;-><init>(Z)V

    sput-object v0, Lb/w/I;->k:Lb/w/I;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lb/w/I;->l:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lb/w/I;
    .locals 3

    .line 54
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 55
    sget-object p0, Lb/w/I;->a:Lb/w/I;

    return-object p0

    .line 56
    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 57
    sget-object p0, Lb/w/I;->c:Lb/w/I;

    return-object p0

    .line 58
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 59
    sget-object p0, Lb/w/I;->d:Lb/w/I;

    return-object p0

    .line 60
    :cond_2
    instance-of v0, p0, [J

    if-eqz v0, :cond_3

    .line 61
    sget-object p0, Lb/w/I;->e:Lb/w/I;

    return-object p0

    .line 62
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 63
    sget-object p0, Lb/w/I;->f:Lb/w/I;

    return-object p0

    .line 64
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 65
    sget-object p0, Lb/w/I;->g:Lb/w/I;

    return-object p0

    .line 66
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 67
    sget-object p0, Lb/w/I;->h:Lb/w/I;

    return-object p0

    .line 68
    :cond_6
    instance-of v0, p0, [Z

    if-eqz v0, :cond_7

    .line 69
    sget-object p0, Lb/w/I;->i:Lb/w/I;

    return-object p0

    .line 70
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    if-nez p0, :cond_8

    goto/16 :goto_0

    .line 71
    :cond_8
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 72
    sget-object p0, Lb/w/I;->k:Lb/w/I;

    return-object p0

    .line 73
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Landroid/os/Parcelable;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    new-instance v0, Lb/w/I$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/w/I$b;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 76
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/io/Serializable;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    new-instance v0, Lb/w/I$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/w/I$d;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 79
    :cond_b
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    .line 80
    new-instance v0, Lb/w/I$c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/w/I$c;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 81
    :cond_c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_d

    .line 82
    new-instance v0, Lb/w/I$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/w/I$a;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 83
    :cond_d
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_e

    .line 84
    new-instance v0, Lb/w/I$e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/w/I$e;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 85
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for navigation arguments."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_f
    :goto_0
    sget-object p0, Lb/w/I;->j:Lb/w/I;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lb/w/I;
    .locals 1

    .line 45
    :try_start_0
    sget-object v0, Lb/w/I;->a:Lb/w/I;

    invoke-virtual {v0, p0}, Lb/w/I;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    sget-object p0, Lb/w/I;->a:Lb/w/I;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 47
    :catch_0
    :try_start_1
    sget-object v0, Lb/w/I;->d:Lb/w/I;

    invoke-virtual {v0, p0}, Lb/w/I;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    sget-object p0, Lb/w/I;->d:Lb/w/I;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 49
    :catch_1
    :try_start_2
    sget-object v0, Lb/w/I;->f:Lb/w/I;

    invoke-virtual {v0, p0}, Lb/w/I;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    sget-object p0, Lb/w/I;->f:Lb/w/I;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 51
    :catch_2
    :try_start_3
    sget-object v0, Lb/w/I;->h:Lb/w/I;

    invoke-virtual {v0, p0}, Lb/w/I;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    sget-object p0, Lb/w/I;->h:Lb/w/I;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    .line 53
    :catch_3
    sget-object p0, Lb/w/I;->j:Lb/w/I;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lb/w/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lb/w/I<",
            "*>;"
        }
    .end annotation

    .line 3
    sget-object v0, Lb/w/I;->a:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lb/w/I;->a:Lb/w/I;

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lb/w/I;->c:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lb/w/I;->c:Lb/w/I;

    return-object p0

    .line 7
    :cond_1
    sget-object v0, Lb/w/I;->d:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Lb/w/I;->d:Lb/w/I;

    return-object p0

    .line 9
    :cond_2
    sget-object v0, Lb/w/I;->e:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object p0, Lb/w/I;->e:Lb/w/I;

    return-object p0

    .line 11
    :cond_3
    sget-object v0, Lb/w/I;->h:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    sget-object p0, Lb/w/I;->h:Lb/w/I;

    return-object p0

    .line 13
    :cond_4
    sget-object v0, Lb/w/I;->i:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    sget-object p0, Lb/w/I;->i:Lb/w/I;

    return-object p0

    .line 15
    :cond_5
    sget-object v0, Lb/w/I;->j:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    sget-object p0, Lb/w/I;->j:Lb/w/I;

    return-object p0

    .line 17
    :cond_6
    sget-object v0, Lb/w/I;->k:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    sget-object p0, Lb/w/I;->k:Lb/w/I;

    return-object p0

    .line 19
    :cond_7
    sget-object v0, Lb/w/I;->f:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    sget-object p0, Lb/w/I;->f:Lb/w/I;

    return-object p0

    .line 21
    :cond_8
    sget-object v0, Lb/w/I;->g:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    sget-object p0, Lb/w/I;->g:Lb/w/I;

    return-object p0

    .line 23
    :cond_9
    sget-object v0, Lb/w/I;->b:Lb/w/I;

    invoke-virtual {v0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    sget-object p0, Lb/w/I;->b:Lb/w/I;

    return-object p0

    :cond_a
    if-eqz p0, :cond_11

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    :try_start_0
    const-string v0, "."

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_b
    move-object p1, p0

    :goto_0
    const-string v0, "[]"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 31
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    new-instance p1, Lb/w/I$b;

    invoke-direct {p1, p0}, Lb/w/I$b;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 33
    :cond_c
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    new-instance p1, Lb/w/I$d;

    invoke-direct {p1, p0}, Lb/w/I$d;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 35
    :cond_d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 36
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    new-instance p1, Lb/w/I$c;

    invoke-direct {p1, p0}, Lb/w/I$c;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 38
    :cond_e
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    new-instance p1, Lb/w/I$a;

    invoke-direct {p1, p0}, Lb/w/I$a;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 40
    :cond_f
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    new-instance p1, Lb/w/I$e;

    invoke-direct {p1, p0}, Lb/w/I$e;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 42
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Serializable or Parcelable."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 44
    :cond_11
    sget-object p0, Lb/w/I;->j:Lb/w/I;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lb/w/I;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/w/I;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/w/I;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/w/I;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
