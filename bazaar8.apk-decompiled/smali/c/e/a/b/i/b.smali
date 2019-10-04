.class public final Lc/e/a/b/i/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/d/a/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$g<",
            "Lc/e/a/b/i/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/e/a/b/d/a/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$g<",
            "Lc/e/a/b/i/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/e/a/b/d/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$a<",
            "Lc/e/a/b/i/a/a;",
            "Lc/e/a/b/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc/e/a/b/d/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$a<",
            "Lc/e/a/b/i/a/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lc/e/a/b/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a<",
            "Lc/e/a/b/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lc/e/a/b/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc/e/a/b/d/a/a$g;

    invoke-direct {v0}, Lc/e/a/b/d/a/a$g;-><init>()V

    sput-object v0, Lc/e/a/b/i/b;->a:Lc/e/a/b/d/a/a$g;

    .line 2
    new-instance v0, Lc/e/a/b/d/a/a$g;

    invoke-direct {v0}, Lc/e/a/b/d/a/a$g;-><init>()V

    sput-object v0, Lc/e/a/b/i/b;->b:Lc/e/a/b/d/a/a$g;

    .line 3
    new-instance v0, Lc/e/a/b/i/c;

    invoke-direct {v0}, Lc/e/a/b/i/c;-><init>()V

    sput-object v0, Lc/e/a/b/i/b;->c:Lc/e/a/b/d/a/a$a;

    .line 4
    new-instance v0, Lc/e/a/b/i/d;

    invoke-direct {v0}, Lc/e/a/b/i/d;-><init>()V

    sput-object v0, Lc/e/a/b/i/b;->d:Lc/e/a/b/d/a/a$a;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/e/a/b/i/b;->e:Lcom/google/android/gms/common/api/Scope;

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/e/a/b/i/b;->f:Lcom/google/android/gms/common/api/Scope;

    .line 7
    new-instance v0, Lc/e/a/b/d/a/a;

    sget-object v1, Lc/e/a/b/i/b;->c:Lc/e/a/b/d/a/a$a;

    sget-object v2, Lc/e/a/b/i/b;->a:Lc/e/a/b/d/a/a$g;

    const-string v3, "SignIn.API"

    invoke-direct {v0, v3, v1, v2}, Lc/e/a/b/d/a/a;-><init>(Ljava/lang/String;Lc/e/a/b/d/a/a$a;Lc/e/a/b/d/a/a$g;)V

    sput-object v0, Lc/e/a/b/i/b;->g:Lc/e/a/b/d/a/a;

    .line 8
    new-instance v0, Lc/e/a/b/d/a/a;

    sget-object v1, Lc/e/a/b/i/b;->d:Lc/e/a/b/d/a/a$a;

    sget-object v2, Lc/e/a/b/i/b;->b:Lc/e/a/b/d/a/a$g;

    const-string v3, "SignIn.INTERNAL_API"

    invoke-direct {v0, v3, v1, v2}, Lc/e/a/b/d/a/a;-><init>(Ljava/lang/String;Lc/e/a/b/d/a/a$a;Lc/e/a/b/d/a/a$g;)V

    sput-object v0, Lc/e/a/b/i/b;->h:Lc/e/a/b/d/a/a;

    return-void
.end method
