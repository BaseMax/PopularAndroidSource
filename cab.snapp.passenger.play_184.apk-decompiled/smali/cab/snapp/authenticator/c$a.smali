.class public final Lcab/snapp/authenticator/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/authenticator/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/authenticator/c;
    .locals 3

    .line 955
    iget-object v0, p0, Lcab/snapp/authenticator/c$a;->b:Ljava/lang/Class;

    .line 1097
    sput-object v0, Lcab/snapp/authenticator/b;->a:Ljava/lang/Class;

    .line 956
    new-instance v1, Lcab/snapp/authenticator/c;

    iget-object v2, p0, Lcab/snapp/authenticator/c$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcab/snapp/authenticator/c;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final setAuthenticatorActivity(Ljava/lang/Class;)Lcab/snapp/authenticator/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcab/snapp/authenticator/c$a;"
        }
    .end annotation

    .line 944
    iput-object p1, p0, Lcab/snapp/authenticator/c$a;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public final with(Landroid/content/Context;)Lcab/snapp/authenticator/c$a;
    .locals 0

    .line 932
    iput-object p1, p0, Lcab/snapp/authenticator/c$a;->a:Landroid/content/Context;

    return-object p0
.end method
