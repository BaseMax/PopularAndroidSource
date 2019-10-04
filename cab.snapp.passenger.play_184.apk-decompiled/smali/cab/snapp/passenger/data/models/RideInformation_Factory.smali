.class public final Lcab/snapp/passenger/data/models/RideInformation_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/a/b<",
        "Lcab/snapp/passenger/data/models/RideInformation;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcab/snapp/passenger/data/models/RideInformation_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcab/snapp/passenger/data/models/RideInformation_Factory;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/RideInformation_Factory;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/RideInformation_Factory;->INSTANCE:Lcab/snapp/passenger/data/models/RideInformation_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/a/b<",
            "Lcab/snapp/passenger/data/models/RideInformation;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcab/snapp/passenger/data/models/RideInformation_Factory;->INSTANCE:Lcab/snapp/passenger/data/models/RideInformation_Factory;

    return-object v0
.end method


# virtual methods
.method public final get()Lcab/snapp/passenger/data/models/RideInformation;
    .locals 1

    .line 11
    new-instance v0, Lcab/snapp/passenger/data/models/RideInformation;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/RideInformation;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcab/snapp/passenger/data/models/RideInformation_Factory;->get()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    return-object v0
.end method
