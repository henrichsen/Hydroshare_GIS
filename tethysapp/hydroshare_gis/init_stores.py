from .model import Base
from tethys_sdk.services import get_spatial_dataset_engine
from .utilities import get_workspace


def init_hydroshare_gis_layers_db(engine, first_time):
    Base.metadata.create_all(engine)

    if first_time:
        spatial_dataset_engine = get_spatial_dataset_engine(name='NONE')### make name not hardcoded
        spatial_dataset_engine.delete_workspace(workspace_id=get_workspace(),
                                                purge=True,
                                                recurse=True)
