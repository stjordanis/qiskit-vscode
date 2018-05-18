from qiskit import register, available_backends
from IBMQuantumExperience import IBMQuantumExperience
import argparse
import json

def main():
    parser = argparse.ArgumentParser()

    parser.add_argument('--apiToken')
    parser.add_argument('--url', nargs='?', default='https://quantumexperience.ng.bluemix.net/api')
    parser.add_argument('--hub', nargs='?', default=None)
    parser.add_argument('--group', nargs='?', default=None)
    parser.add_argument('--project', nargs='?', default=None)
    
    args = vars(parser.parse_args())

    if (args['url'] is None):
        args['url'] = 'https://quantumexperience.ng.bluemix.net/api' 

    if (args['hub'] is None) or (args['group'] is None) or (args['project'] is None):
        # api = IBMQuantumExperience(args['apiToken'], {'url': args['url']})
        register(args['apiToken'], args['url'])
    else:
        # api = IBMQuantumExperience(args['apiToken'], {'url': args['url'], 'hub': args['hub'], 'group': args['group'], 'project': args['project']})
        register(args['apiToken'], args['url'], args['hub'], args['group'], args['project'])

    backs = available_backends({'local': False})
    print(json.dumps(backs, indent=2, sort_keys=True))

if __name__ == '__main__':
    main()