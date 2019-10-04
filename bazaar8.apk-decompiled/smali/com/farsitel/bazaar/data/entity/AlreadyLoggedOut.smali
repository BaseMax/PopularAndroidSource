.class public final Lcom/farsitel/bazaar/data/entity/AlreadyLoggedOut;
.super Lcom/farsitel/bazaar/data/entity/ErrorModel$Feature;
.source "ErrorModel.kt"


# static fields
.field public static final INSTANCE:Lcom/farsitel/bazaar/data/entity/AlreadyLoggedOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/AlreadyLoggedOut;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/entity/AlreadyLoggedOut;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/entity/AlreadyLoggedOut;->INSTANCE:Lcom/farsitel/bazaar/data/entity/AlreadyLoggedOut;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "User already logged out"

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Feature;-><init>(Ljava/lang/String;)V

    return-void
.end method
